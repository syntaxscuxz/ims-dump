.class public Lorg/codeaurora/ims/ImsSmsImpl;
.super Landroid/telephony/ims/stub/ImsSmsImplBase;
.source "ImsSmsImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/ims/ImsSmsImpl$ImsSmsHandler;
    }
.end annotation


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "ImsSmsImpl"

.field public static final MT_IMS_STATUS_VALIDATION_FAIL:I = 0x2

.field public static final MT_IMS_STATUS_VALIDATION_NONE:I = 0x0

.field public static final MT_IMS_STATUS_VALIDATION_PASS:I = 0x1


# instance fields
.field private final EVENT_SEND_SMS_RESPONSE:I

.field private final EVENT_UNSOL_INCOMING_SMS:I

.field private final EVENT_UNSOL_STATUS_REPORT:I

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIncomingToken:I

.field private mPhoneId:I

.field private mSmsCi:Lorg/codeaurora/ims/ImsSenderRxr;

.field private mSmsFwkReady:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mSmsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static bridge synthetic -$$Nest$msendResponseToFramework(Lorg/codeaurora/ims/ImsSmsImpl;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsSmsImpl;->sendResponseToFramework(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendSmsToFramework(Lorg/codeaurora/ims/ImsSmsImpl;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsSmsImpl;->sendSmsToFramework(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendStatusReportToFramework(Lorg/codeaurora/ims/ImsSmsImpl;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsSmsImpl;->sendStatusReportToFramework(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILorg/codeaurora/ims/ImsSenderRxr;)V
    .locals 2

    .line 60
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsConfigImpl$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {p0, v0}, Landroid/telephony/ims/stub/ImsSmsImplBase;-><init>(Ljava/util/concurrent/Executor;)V

    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lorg/codeaurora/ims/ImsSmsImpl;->mPhoneId:I

    .line 45
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/codeaurora/ims/ImsSmsImpl;->mSmsMap:Ljava/util/HashMap;

    .line 47
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v1, p0, Lorg/codeaurora/ims/ImsSmsImpl;->mSmsFwkReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 48
    iput v0, p0, Lorg/codeaurora/ims/ImsSmsImpl;->mIncomingToken:I

    const/4 v0, 0x1

    .line 51
    iput v0, p0, Lorg/codeaurora/ims/ImsSmsImpl;->EVENT_SEND_SMS_RESPONSE:I

    const/4 v0, 0x2

    .line 52
    iput v0, p0, Lorg/codeaurora/ims/ImsSmsImpl;->EVENT_UNSOL_INCOMING_SMS:I

    const/4 v1, 0x3

    .line 53
    iput v1, p0, Lorg/codeaurora/ims/ImsSmsImpl;->EVENT_UNSOL_STATUS_REPORT:I

    .line 61
    iput-object p1, p0, Lorg/codeaurora/ims/ImsSmsImpl;->mContext:Landroid/content/Context;

    .line 62
    iput-object p3, p0, Lorg/codeaurora/ims/ImsSmsImpl;->mSmsCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 63
    iput p2, p0, Lorg/codeaurora/ims/ImsSmsImpl;->mPhoneId:I

    .line 64
    new-instance p1, Lorg/codeaurora/ims/ImsSmsImpl$ImsSmsHandler;

    iget-object p2, p0, Lorg/codeaurora/ims/ImsSmsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lorg/codeaurora/ims/ImsSmsImpl$ImsSmsHandler;-><init>(Lorg/codeaurora/ims/ImsSmsImpl;Landroid/os/Looper;)V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsSmsImpl;->mHandler:Landroid/os/Handler;

    .line 65
    iget-object p2, p0, Lorg/codeaurora/ims/ImsSmsImpl;->mSmsCi:Lorg/codeaurora/ims/ImsSenderRxr;

    const/4 p3, 0x0

    invoke-virtual {p2, p1, v0, p3}, Lorg/codeaurora/ims/ImsSenderRxr;->setOnIncomingImsSms(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 66
    iget-object p1, p0, Lorg/codeaurora/ims/ImsSmsImpl;->mSmsCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object p2, p0, Lorg/codeaurora/ims/ImsSmsImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, p2, v1, p3}, Lorg/codeaurora/ims/ImsSenderRxr;->setOnImsSmsStatusReport(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 67
    iget-object p1, p0, Lorg/codeaurora/ims/ImsSmsImpl;->mContext:Landroid/content/Context;

    const-string p2, "phone"

    .line 68
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lorg/codeaurora/ims/ImsSmsImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-void
.end method

.method private getSubId()I
    .locals 2

    .line 80
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSmsImpl;->mContext:Landroid/content/Context;

    const-string v1, "telephony_subscription_service"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 85
    :cond_0
    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->createForAllUserProfiles()Landroid/telephony/SubscriptionManager;

    .line 86
    iget p0, p0, Lorg/codeaurora/ims/ImsSmsImpl;->mPhoneId:I

    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubscriptionId(I)I

    move-result p0

    return p0
.end method

.method private isNetworkRoaming()Z
    .locals 2

    .line 90
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSmsImpl;->getSubId()I

    move-result v0

    .line 91
    iget-object p0, p0, Lorg/codeaurora/ims/ImsSmsImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz p0, :cond_1

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 95
    :cond_0
    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private isSmsDeliverCompleted(Lorg/codeaurora/ims/sms/StatusReport;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 219
    :cond_0
    const-string v1, "3gpp2"

    invoke-virtual {p1}, Lorg/codeaurora/ims/sms/StatusReport;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    return v2

    .line 223
    :cond_1
    invoke-virtual {p1}, Lorg/codeaurora/ims/sms/StatusReport;->getPdu()[B

    move-result-object v1

    invoke-virtual {p1}, Lorg/codeaurora/ims/sms/StatusReport;->getFormat()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 225
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getStatus()I

    move-result p1

    .line 226
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "isSmsDeliverCompleted : status = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p0, 0x40

    if-ge p1, p0, :cond_3

    const/16 p0, 0x20

    if-ge p1, p0, :cond_2

    goto :goto_0

    :cond_2
    return v0

    :cond_3
    :goto_0
    return v2

    :cond_4
    return v0
.end method

.method static synthetic lambda$maybeAdjustSendStatus$0(II)Z
    .locals 0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic lambda$maybeAdjustSendStatus$1(II)Z
    .locals 0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private maybeAdjustSendStatus(Lorg/codeaurora/ims/sms/SmsResponse;)I
    .locals 8

    .line 99
    invoke-virtual {p1}, Lorg/codeaurora/ims/sms/SmsResponse;->getResult()I

    move-result v0

    .line 100
    invoke-virtual {p1}, Lorg/codeaurora/ims/sms/SmsResponse;->getRat()I

    move-result v1

    .line 101
    invoke-virtual {p1}, Lorg/codeaurora/ims/sms/SmsResponse;->getNetworkErrorCode()I

    move-result p1

    const/4 v2, 0x3

    const/4 v3, 0x4

    if-eq v0, v3, :cond_0

    if-eq v0, v2, :cond_0

    return v0

    :cond_0
    const/4 v4, -0x1

    const/4 v5, 0x2

    if-eq p1, v4, :cond_2

    .line 110
    iget v4, p0, Lorg/codeaurora/ims/ImsSmsImpl;->mPhoneId:I

    iget-object v6, p0, Lorg/codeaurora/ims/ImsSmsImpl;->mContext:Landroid/content/Context;

    const-string v7, "supported_sms_rp_cause_values_int_array"

    invoke-static {v4, v6, v7}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->getIntArray(ILandroid/content/Context;Ljava/lang/String;)[I

    move-result-object v4

    if-eqz v4, :cond_1

    .line 113
    invoke-static {v4}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v4

    new-instance v6, Lorg/codeaurora/ims/ImsSmsImpl$$ExternalSyntheticLambda0;

    invoke-direct {v6, p1}, Lorg/codeaurora/ims/ImsSmsImpl$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {v4, v6}, Ljava/util/stream/IntStream;->anyMatch(Ljava/util/function/IntPredicate;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 119
    iget v4, p0, Lorg/codeaurora/ims/ImsSmsImpl;->mPhoneId:I

    iget-object v6, p0, Lorg/codeaurora/ims/ImsSmsImpl;->mContext:Landroid/content/Context;

    const-string v7, "sms_rp_cause_values_to_fallback_int_array"

    invoke-static {v4, v6, v7}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->getIntArray(ILandroid/content/Context;Ljava/lang/String;)[I

    move-result-object v4

    if-eqz v4, :cond_2

    .line 121
    invoke-static {v4}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v4

    new-instance v6, Lorg/codeaurora/ims/ImsSmsImpl$$ExternalSyntheticLambda1;

    invoke-direct {v6, p1}, Lorg/codeaurora/ims/ImsSmsImpl$$ExternalSyntheticLambda1;-><init>(I)V

    .line 122
    invoke-interface {v4, v6}, Ljava/util/stream/IntStream;->anyMatch(Ljava/util/function/IntPredicate;)Z

    move-result p1

    if-eqz p1, :cond_2

    move v0, v3

    goto :goto_0

    :cond_1
    return v5

    :cond_2
    :goto_0
    if-ne v0, v2, :cond_3

    goto :goto_1

    .line 138
    :cond_3
    iget p1, p0, Lorg/codeaurora/ims/ImsSmsImpl;->mPhoneId:I

    iget-object v3, p0, Lorg/codeaurora/ims/ImsSmsImpl;->mContext:Landroid/content/Context;

    const-string v4, "config_retry_sms_over_ims"

    invoke-static {p1, v3, v4}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->isCarrierConfigEnabled(ILandroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 140
    const-string p1, "maybeAdjustSendStatus: retry SMS over IMS"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return v2

    .line 147
    :cond_4
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSmsImpl;->isNetworkRoaming()Z

    move-result p1

    if-eqz p1, :cond_6

    iget p1, p0, Lorg/codeaurora/ims/ImsSmsImpl;->mPhoneId:I

    iget-object v2, p0, Lorg/codeaurora/ims/ImsSmsImpl;->mContext:Landroid/content/Context;

    const-string v3, "fallback_sms_not_allowed_in_roaming"

    invoke-static {p1, v2, v3}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->isCarrierConfigEnabled(ILandroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    const p1, 0x7fffffff

    if-eq v1, p1, :cond_5

    const/16 p1, 0x12

    if-eq v1, p1, :cond_5

    const/16 p1, 0x15

    if-ne v1, p1, :cond_6

    .line 151
    :cond_5
    const-string p1, "maybeAdjustSendStatus: Roaming network, fallback not allowed."

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return v5

    :cond_6
    :goto_1
    return v0
.end method

.method private sendDeliveryErrorToRIL()V
    .locals 3

    .line 76
    iget-object p0, p0, Lorg/codeaurora/ims/ImsSmsImpl;->mSmsCi:Lorg/codeaurora/ims/ImsSenderRxr;

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->acknowledgeSms(IILandroid/os/Message;)V

    return-void
.end method

.method private sendResponseToFramework(Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 8

    .line 158
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/ims/sms/SmsResponse;

    .line 159
    iget-object p1, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v0, :cond_2

    .line 160
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSmsImpl;->mSmsFwkReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 165
    :cond_0
    invoke-virtual {v0}, Lorg/codeaurora/ims/sms/SmsResponse;->getMsgRef()I

    move-result v3

    .line 166
    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsSmsImpl;->maybeAdjustSendStatus(Lorg/codeaurora/ims/sms/SmsResponse;)I

    move-result v4

    .line 167
    invoke-virtual {v0}, Lorg/codeaurora/ims/sms/SmsResponse;->getReason()I

    move-result v5

    .line 168
    invoke-virtual {v0}, Lorg/codeaurora/ims/sms/SmsResponse;->getNetworkErrorCode()I

    move-result v6

    .line 169
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v7, "onSendSmsResult:: token:"

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " smsResponse:"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSmsImpl;->mSmsMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    if-ne v4, p1, :cond_1

    .line 175
    :try_start_0
    invoke-virtual {p0, v2, v3}, Lorg/codeaurora/ims/ImsSmsImpl;->onSendSmsResultSuccess(II)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object v1, p0

    goto :goto_0

    :cond_1
    move-object v1, p0

    .line 177
    :try_start_1
    invoke-virtual/range {v1 .. v6}, Lorg/codeaurora/ims/ImsSmsImpl;->onSendSmsResultError(IIIII)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception v0

    :goto_0
    move-object p1, v0

    .line 180
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "onSendSmsResult: Ex:"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_2
    :goto_1
    move-object v1, p0

    .line 161
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "smsResponse ="

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " isFrameworkReady="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v1, Lorg/codeaurora/ims/ImsSmsImpl;->mSmsFwkReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 162
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 161
    invoke-static {v1, p0}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private sendSmsToFramework(Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 2

    .line 185
    iget-object p1, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lorg/codeaurora/ims/sms/IncomingSms;

    if-eqz p1, :cond_2

    .line 186
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSmsImpl;->mSmsFwkReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 192
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsSmsImpl;->mIncomingToken:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lorg/codeaurora/ims/ImsSmsImpl;->mIncomingToken:I

    .line 202
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSmsReceived:: token:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/codeaurora/ims/ImsSmsImpl;->mIncomingToken:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " incomingSms:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    :try_start_0
    iget v0, p0, Lorg/codeaurora/ims/ImsSmsImpl;->mIncomingToken:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/codeaurora/ims/ImsSmsImpl;->mIncomingToken:I

    invoke-virtual {p1}, Lorg/codeaurora/ims/sms/IncomingSms;->getFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/codeaurora/ims/sms/IncomingSms;->getPdu()[B

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lorg/codeaurora/ims/ImsSmsImpl;->onSmsReceived(ILjava/lang/String;[B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSmsReceived: Ex:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSmsImpl;->sendDeliveryErrorToRIL()V

    return-void

    .line 187
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "incomingSms ="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " isFrameworkRead="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/codeaurora/ims/ImsSmsImpl;->mSmsFwkReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 188
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 187
    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSmsImpl;->sendDeliveryErrorToRIL()V

    return-void
.end method

.method private sendStatusReportErrorToRIL(I)V
    .locals 2

    .line 72
    iget-object p0, p0, Lorg/codeaurora/ims/ImsSmsImpl;->mSmsCi:Lorg/codeaurora/ims/ImsSenderRxr;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->acknowledgeSmsReport(IILandroid/os/Message;)V

    return-void
.end method

.method private sendStatusReportToFramework(Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 5

    .line 234
    iget-object p1, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lorg/codeaurora/ims/sms/StatusReport;

    if-eqz p1, :cond_3

    .line 236
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSmsImpl;->mSmsFwkReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 242
    :cond_0
    invoke-virtual {p1}, Lorg/codeaurora/ims/sms/StatusReport;->getMsgRef()I

    move-result v0

    .line 243
    invoke-virtual {p1}, Lorg/codeaurora/ims/sms/StatusReport;->getFormat()Ljava/lang/String;

    move-result-object v1

    .line 244
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSmsImpl;->mSmsMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-nez v2, :cond_1

    const/4 v2, -0x1

    goto :goto_0

    .line 245
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 247
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onSmsStatusReportReceived:: token: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " statusReport:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 251
    :try_start_0
    invoke-virtual {p1}, Lorg/codeaurora/ims/sms/StatusReport;->getPdu()[B

    move-result-object v3

    invoke-virtual {p0, v2, v0, v1, v3}, Lorg/codeaurora/ims/ImsSmsImpl;->onSmsStatusReportReceived(IILjava/lang/String;[B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 253
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onSmsStatusReportReceived: Ex:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 254
    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsSmsImpl;->sendStatusReportErrorToRIL(I)V

    .line 258
    :goto_1
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsSmsImpl;->isSmsDeliverCompleted(Lorg/codeaurora/ims/sms/StatusReport;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 259
    iget-object p0, p0, Lorg/codeaurora/ims/ImsSmsImpl;->mSmsMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void

    .line 237
    :cond_3
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "statusReport ="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " isFrameworkRead="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/codeaurora/ims/ImsSmsImpl;->mSmsFwkReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 238
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 237
    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 239
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsSmsImpl;->sendStatusReportErrorToRIL(I)V

    return-void
.end method


# virtual methods
.method public acknowledgeSms(III)V
    .locals 2

    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "acknowledgeSms:: token:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " msgRef:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " result:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ImsSmsImpl"

    invoke-static {v0, p1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    iget-object p0, p0, Lorg/codeaurora/ims/ImsSmsImpl;->mSmsCi:Lorg/codeaurora/ims/ImsSenderRxr;

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p3, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->acknowledgeSms(IILandroid/os/Message;)V

    return-void
.end method

.method public acknowledgeSmsReport(III)V
    .locals 2

    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "acknowledgeSmsReport:: token:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " msgRef:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " result:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ImsSmsImpl"

    invoke-static {v0, p1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    iget-object p0, p0, Lorg/codeaurora/ims/ImsSmsImpl;->mSmsCi:Lorg/codeaurora/ims/ImsSenderRxr;

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p3, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->acknowledgeSmsReport(IILandroid/os/Message;)V

    return-void
.end method

.method public getSmsFormat()Ljava/lang/String;
    .locals 0

    .line 320
    iget-object p0, p0, Lorg/codeaurora/ims/ImsSmsImpl;->mSmsCi:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsSenderRxr;->getSmsFormat()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onReady()V
    .locals 1

    .line 325
    iget-object p0, p0, Lorg/codeaurora/ims/ImsSmsImpl;->mSmsFwkReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public sendSms(IILjava/lang/String;Ljava/lang/String;Z[B)V
    .locals 3

    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sendSms:: token:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " msgRef:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " format:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " isRetry:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsSmsImpl"

    invoke-static {v1, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p0

    .line 298
    iget-object p0, v0, Lorg/codeaurora/ims/ImsSmsImpl;->mSmsCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v0, v0, Lorg/codeaurora/ims/ImsSmsImpl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    .line 299
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    move-object v2, p6

    move-object p6, p1

    move p1, p2

    move-object p2, p3

    move-object p3, p4

    move p4, p5

    move-object p5, v2

    .line 298
    invoke-virtual/range {p0 .. p6}, Lorg/codeaurora/ims/ImsSenderRxr;->sendSms(ILjava/lang/String;Ljava/lang/String;Z[BLandroid/os/Message;)V

    return-void
.end method
