package fsdx;

import java.util.Random;

import com.aliyuncs.DefaultAcsClient;
import com.aliyuncs.IAcsClient;
import com.aliyuncs.dysmsapi.model.v20170525.SendSmsRequest;
import com.aliyuncs.dysmsapi.model.v20170525.SendSmsResponse;
import com.aliyuncs.exceptions.ClientException;
import com.aliyuncs.profile.DefaultProfile;
import com.aliyuncs.profile.IClientProfile;

import com.aliyuncs.utils.*;



public class SendSms {

    //��Ʒ����:��ͨ�Ŷ���API��Ʒ,�����������滻
    static final String product = "Dysmsapi";
    //��Ʒ����,�����������滻
    static final String domain = "dysmsapi.aliyuncs.com";

    // TODO �˴���Ҫ�滻�ɿ������Լ���AK(�ڰ����Ʒ��ʿ���̨Ѱ��)
    static final String accessKeyId = "LTAIsqKHYgLYYNiS";
    static final String accessKeySecret = "xH3WaqQvd2xuRKqCzllIoZw59ETfgU";

    public static SendSmsResponse sendSms(String phone, String code) throws ClientException {

        //������������ʱʱ��
        System.setProperty("sun.net.client.defaultConnectTimeout", "10000");
        System.setProperty("sun.net.client.defaultReadTimeout", "10000");

        //��ʼ��acsClient,�ݲ�֧��region��
        IClientProfile profile = DefaultProfile.getProfile("cn-hangzhou", accessKeyId, accessKeySecret);
        DefaultProfile.addEndpoint("cn-hangzhou", "cn-hangzhou", product, domain);
        IAcsClient acsClient = new DefaultAcsClient(profile);

        //��װ�������-��������������̨-�ĵ���������
        SendSmsRequest request = new SendSmsRequest();
        //����:�������ֻ���
        request.setPhoneNumbers(phone);
        //����:����ǩ��-���ڶ��ſ���̨���ҵ�
        request.setSignName("RoseOnly");
        //����:����ģ��-���ڶ��ſ���̨���ҵ�
        request.setTemplateCode("SMS_172205639");
        //��ѡ:ģ���еı����滻JSON��,��ģ������Ϊ"������֤��Ϊ${code}"...ʱ,�˴���ֵΪ
        request.setTemplateParam("{\"code\":\""+code+"\"}");

        //ѡ��-���ж�����չ��(�����������û�����Դ��ֶ�)
        //request.setSmsUpExtendCode("90997");

        //��ѡ:outIdΪ�ṩ��ҵ����չ�ֶ�,�����ڶ��Ż�ִ��Ϣ�н���ֵ���ظ�������
        request.setOutId("yourOutId");

        //hint �˴����ܻ��׳��쳣��ע��catch
        SendSmsResponse sendSmsResponse = acsClient.getAcsResponse(request);

        return sendSmsResponse;
    }
    
    public static synchronized String genUniqueKey(){
        Random random = new Random();
        Integer number = random.nextInt(9000) + 1000;
        return String.valueOf(number);
    }
    
    public static void main(String[] args) {
        try {
            String code = SendSms.genUniqueKey();
            SendSms.sendSms("15574886100", code);
            System.out.println("���Ͷ�����֤��ɹ���"+code);
        } catch (ClientException e) {
            e.printStackTrace();
        }
    }
    
    
}