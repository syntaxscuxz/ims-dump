.class public Lorg/codeaurora/ims/ImsUtImpl;
.super Landroid/telephony/ims/stub/ImsUtImplBase;
.source "ImsUtImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;,
        Lorg/codeaurora/ims/ImsUtImpl$IOnCloseListener;
    }
.end annotation


# static fields
.field private static final CF_DISABLED:I = 0x0

.field private static final CF_ENABLED:I = 0x1

.field static final CF_REASON_ALL:I = 0x4

.field static final CF_REASON_ALL_CONDITIONAL:I = 0x5

.field static final CF_REASON_BUSY:I = 0x1

.field static final CF_REASON_NOT_LOGGED_IN:I = 0x6

.field static final CF_REASON_NOT_REACHABLE:I = 0x3

.field static final CF_REASON_NO_REPLY:I = 0x2

.field static final CF_REASON_UNCONDITIONAL:I = 0x0

.field private static final EVENT_QUERY_CB:I = 0xd

.field private static final EVENT_QUERY_CF:I = 0x1

.field private static final EVENT_QUERY_CLIP:I = 0x7

.field private static final EVENT_QUERY_CLIR:I = 0x5

.field private static final EVENT_QUERY_COLP:I = 0xb

.field private static final EVENT_QUERY_COLR:I = 0x9

.field private static final EVENT_QUERY_CW:I = 0x3

.field private static final EVENT_UNSOL_ON_SS:I = 0xf

.field private static final EVENT_UPDATE_CB:I = 0xe

.field private static final EVENT_UPDATE_CB_ALL:I = 0x10

.field private static final EVENT_UPDATE_CF:I = 0x2

.field private static final EVENT_UPDATE_CLIP:I = 0x8

.field private static final EVENT_UPDATE_CLIR:I = 0x6

.field private static final EVENT_UPDATE_COLP:I = 0xc

.field private static final EVENT_UPDATE_COLR:I = 0xa

.field private static final EVENT_UPDATE_CW:I = 0x4

.field private static final LOG_TAG:Ljava/lang/String; = "ImsUtImpl"

.field private static final MAX_REQUESTS_PENDING:I = 0x32

.field static final SERVICE_CLASS_DATA:I = 0x2

.field static final SERVICE_CLASS_DATA_ASYNC:I = 0x20

.field static final SERVICE_CLASS_DATA_SYNC:I = 0x10

.field static final SERVICE_CLASS_FAX:I = 0x4

.field static final SERVICE_CLASS_MAX:I = 0x80

.field static final SERVICE_CLASS_NONE:I = 0x0

.field static final SERVICE_CLASS_PACKET:I = 0x40

.field static final SERVICE_CLASS_PAD:I = 0x80

.field static final SERVICE_CLASS_SMS:I = 0x8

.field static final SERVICE_CLASS_VOICE:I = 0x1

.field static final UT_ERROR_FDN_FAILURE:Ljava/lang/String; = "E_FDN_CHECK_FAILURE"

.field static final UT_ERROR_GENERIC:Ljava/lang/String; = "E_GENERIC_FAILURE"

.field static final UT_ERROR_NETWORK_UNSUPPORTED:Ljava/lang/String; = "E_NETWORK_NOT_SUPPORTED"

.field static final UT_ERROR_SS_MODIFIED_TO_DIAL:Ljava/lang/String; = "E_SS_MODIFIED_TO_DIAL"

.field static final UT_ERROR_SS_MODIFIED_TO_DIAL_VIDEO:Ljava/lang/String; = "E_SS_MODIFIED_TO_DIAL_VIDEO"

.field static final UT_ERROR_SS_MODIFIED_TO_SS:Ljava/lang/String; = "E_SS_MODIFIED_TO_SS"

.field static final UT_ERROR_SS_MODIFIED_TO_USSD:Ljava/lang/String; = "E_SS_MODIFIED_TO_USSD"

.field static final UT_PASSWORD_INCORRECT:Ljava/lang/String; = "E_PASSWORD_INCORRECT"

.field private static requestId:I = -0x1


# instance fields
.field private final MODIFY_PHONE_STATE:Ljava/lang/String;

.field private final READ_PHONE_STATE:Ljava/lang/String;

.field private final READ_PRIVILEGED_PHONE_STATE:Ljava/lang/String;

.field private mCi:Lorg/codeaurora/ims/ImsSenderRxr;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mIsDisposed:Z

.field private final mListenerImpl:Lorg/codeaurora/ims/ImsUtListenerImpl;

.field private final mLock:Ljava/lang/Object;

.field private mOnCloseListener:Lorg/codeaurora/ims/ImsUtImpl$IOnCloseListener;

.field private mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;


# direct methods
.method static bridge synthetic -$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mListenerImpl:Lorg/codeaurora/ims/ImsUtListenerImpl;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mdumpw(Lorg/codeaurora/ims/ImsUtImpl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsUtImpl;->dumpw(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$misDisposed(Lorg/codeaurora/ims/ImsUtImpl;)Z
    .locals 0

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->isDisposed()Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/ims/ImsSenderRxr;Landroid/content/Context;)V
    .locals 2

    .line 125
    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsUtImplBase;-><init>()V

    .line 107
    const-string v0, "android.permission.MODIFY_PHONE_STATE"

    iput-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->MODIFY_PHONE_STATE:Ljava/lang/String;

    .line 108
    const-string v0, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    iput-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->READ_PRIVILEGED_PHONE_STATE:Ljava/lang/String;

    .line 109
    const-string v0, "android.permission.READ_PHONE_STATE"

    iput-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->READ_PHONE_STATE:Ljava/lang/String;

    .line 114
    new-instance v0, Lorg/codeaurora/ims/ImsUtListenerImpl;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsUtListenerImpl;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mListenerImpl:Lorg/codeaurora/ims/ImsUtListenerImpl;

    .line 115
    new-instance v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;-><init>(Lorg/codeaurora/ims/ImsUtImpl;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    .line 122
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mLock:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 123
    iput-boolean v1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mIsDisposed:Z

    .line 126
    iput-object p1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    .line 127
    iput-object p2, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 128
    iput-object p3, p0, Lorg/codeaurora/ims/ImsUtImpl;->mContext:Landroid/content/Context;

    const/16 p0, 0xf

    const/4 p1, 0x0

    .line 129
    invoke-virtual {p2, v0, p0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForSuppServiceIndication(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method private dumpw(Ljava/lang/String;)V
    .locals 2

    .line 815
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": isDisposed= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->isDisposed()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 816
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": mCi= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 817
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": mListenerImpl= "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mListenerImpl:Lorg/codeaurora/ims/ImsUtListenerImpl;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private enforceReadPhoneState(Ljava/lang/String;)V
    .locals 2

    .line 133
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mContext:Landroid/content/Context;

    .line 135
    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    iget-object p0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, p1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private getFacilityFromCbType(I)I
    .locals 2

    const/4 p0, 0x2

    const/4 v0, 0x3

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x4

    if-ne p1, v0, :cond_1

    return p0

    :cond_1
    const/4 v0, 0x5

    if-ne p1, p0, :cond_2

    return v0

    :cond_2
    const/4 p0, 0x1

    const/4 v1, 0x6

    if-ne p1, p0, :cond_3

    return v1

    :cond_3
    const/4 p0, 0x7

    if-ne p1, v0, :cond_4

    return p0

    :cond_4
    const/16 v0, 0x8

    if-ne p1, p0, :cond_5

    return v0

    :cond_5
    const/16 p0, 0x9

    if-ne p1, v0, :cond_6

    return p0

    :cond_6
    const/16 v0, 0xa

    if-ne p1, p0, :cond_7

    return v0

    :cond_7
    if-ne p1, v0, :cond_8

    const/16 p0, 0xb

    return p0

    :cond_8
    if-ne p1, v1, :cond_9

    const/16 p0, 0xc

    return p0

    :cond_9
    const/4 p0, -0x1

    return p0
.end method

.method public static getIcbAction(I)I
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    return v0

    :cond_1
    const/4 v0, 0x4

    if-ne p0, v0, :cond_2

    const/4 p0, 0x5

    return p0

    :cond_2
    const/4 v1, 0x3

    if-ne p0, v1, :cond_3

    return v0

    :cond_3
    const/4 p0, -0x1

    return p0
.end method

.method private getIdForRequest()I
    .locals 2

    .line 725
    iget-object p0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mLock:Ljava/lang/Object;

    monitor-enter p0

    .line 726
    :try_start_0
    sget v0, Lorg/codeaurora/ims/ImsUtImpl;->requestId:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lorg/codeaurora/ims/ImsUtImpl;->requestId:I

    const/16 v1, 0x32

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    .line 728
    sput v0, Lorg/codeaurora/ims/ImsUtImpl;->requestId:I

    .line 730
    :cond_0
    sget v0, Lorg/codeaurora/ims/ImsUtImpl;->requestId:I

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 731
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getImsReasonInfoFromResponseError(Lorg/codeaurora/telephony/utils/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;
    .locals 5

    const/4 v0, 0x0

    .line 748
    const-string v1, "ImsUtImpl"

    if-nez p0, :cond_0

    .line 749
    const-string p0, "getImsReasonInfoFromResponseError :: Null AsyncResult!"

    invoke-static {v1, p0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 752
    :cond_0
    iget-object v2, p0, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1

    .line 753
    const-string p0, "getImsReasonInfoFromResponseError :: No exception in AsyncResult!"

    invoke-static {v1, p0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1
    const/4 v2, 0x0

    .line 761
    :try_start_0
    iget-object v3, p0, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    throw v3
    :try_end_0
    .catch Lorg/codeaurora/ims/ImsRilException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 765
    :catchall_0
    const-string p0, "ar.exception is not an ImsRilException."

    invoke-static {v1, p0}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 766
    new-instance p0, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {p0, v2, v2, v0}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    return-object p0

    .line 769
    :catch_0
    iget-object p0, p0, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast p0, Lorg/codeaurora/ims/ImsRilException;

    .line 770
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsRilException;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    .line 772
    const-string p0, "getImsReasonInfoFromResponseError :: Null message string in exception!"

    invoke-static {v1, p0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    new-instance p0, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {p0, v2, v2, v0}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    return-object p0

    .line 777
    :cond_2
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsRilException;->getCode()I

    move-result p0

    invoke-static {p0}, Lorg/codeaurora/ims/ImsUtImpl;->toImsReasonInfoCode(I)I

    move-result p0

    .line 779
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getImsReasonInfoFromResponseError :: ImsReasonInfo code="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v1, p0, v2, v0}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    return-object v1
.end method

.method private isDisposed()Z
    .locals 0

    .line 155
    iget-boolean p0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mIsDisposed:Z

    return p0
.end method

.method private static toImsReasonInfoCode(I)I
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/16 v0, 0x1e

    if-eq p0, v0, :cond_1

    const/16 v0, 0x31

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    .line 808
    const-string p0, "ImsUtImpl"

    const-string v0, "getImsReasonInfoFromResponseError :: Unrecognized exception message string!"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :pswitch_0
    const/16 p0, 0x339

    return p0

    :pswitch_1
    const/16 p0, 0x338

    return p0

    :pswitch_2
    const/16 p0, 0x337

    return p0

    :pswitch_3
    const/16 p0, 0x336

    return p0

    :pswitch_4
    const/16 p0, 0xf1

    return p0

    :cond_0
    const/16 p0, 0x352

    return p0

    :cond_1
    const/16 p0, 0x322

    return p0

    :cond_2
    const/16 p0, 0x335

    return p0

    :cond_3
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x22
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 163
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "close"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 164
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mIsDisposed:Z

    .line 165
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 166
    iget-object v2, p0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->unregisterForSuppServiceIndication(Landroid/os/Handler;)V

    .line 167
    iput-object v1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 169
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mOnCloseListener:Lorg/codeaurora/ims/ImsUtImpl$IOnCloseListener;

    if-eqz v0, :cond_1

    .line 170
    invoke-interface {v0, p0}, Lorg/codeaurora/ims/ImsUtImpl$IOnCloseListener;->onClosed(Lorg/codeaurora/ims/ImsUtImpl;)V

    .line 171
    iput-object v1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mOnCloseListener:Lorg/codeaurora/ims/ImsUtImpl$IOnCloseListener;

    :cond_1
    return-void
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 0

    .line 143
    iget-object p0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public queryCFForServiceClass(ILjava/lang/String;I)I
    .locals 5

    .line 328
    const-string v0, "queryCallForward"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsUtImpl;->enforceReadPhoneState(Ljava/lang/String;)V

    .line 329
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->isDisposed()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_9

    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    if-nez v0, :cond_0

    goto :goto_1

    .line 335
    :cond_0
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->getIdForRequest()I

    move-result v0

    if-gez v0, :cond_1

    .line 337
    const-string p1, "Invalid request id for queryCallForward."

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return v1

    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p1, :cond_2

    move v4, v2

    goto :goto_0

    :cond_2
    if-ne p1, v3, :cond_3

    move v4, v3

    goto :goto_0

    :cond_3
    const/4 v4, 0x2

    if-ne p1, v4, :cond_4

    goto :goto_0

    :cond_4
    const/4 v4, 0x3

    if-ne p1, v4, :cond_5

    goto :goto_0

    :cond_5
    const/4 v4, 0x4

    if-ne p1, v4, :cond_6

    goto :goto_0

    :cond_6
    const/4 v4, 0x5

    if-ne p1, v4, :cond_7

    goto :goto_0

    :cond_7
    const/4 v4, 0x6

    if-ne p1, v4, :cond_8

    .line 367
    :goto_0
    iget-object p1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    .line 370
    invoke-virtual {v1, v3, v0, v2, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 367
    invoke-virtual {p1, v4, p3, p2, p0}, Lorg/codeaurora/ims/ImsSenderRxr;->queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V

    return v0

    .line 364
    :cond_8
    const-string p1, "Invalid condition for queryCallForward."

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return v1

    .line 330
    :cond_9
    :goto_1
    const-string p1, "queryCFForServiceClass"

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsUtImpl;->dumpw(Ljava/lang/String;)V

    return v1
.end method

.method public queryCallBarring(I)I
    .locals 1

    const/4 v0, 0x0

    .line 180
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsUtImpl;->queryCallBarringForServiceClass(II)I

    move-result p0

    return p0
.end method

.method public queryCallBarringForServiceClass(II)I
    .locals 11

    .line 188
    const-string v0, "queryCallBarring"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsUtImpl;->enforceReadPhoneState(Ljava/lang/String;)V

    .line 189
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->getIdForRequest()I

    move-result v0

    const/4 v1, -0x1

    if-gez v0, :cond_0

    .line 191
    const-string p1, "Invalid request id for queryCallBarring."

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return v1

    .line 196
    :cond_0
    iget-object v2, p0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xd

    const/4 v4, 0x0

    .line 198
    invoke-virtual {v2, v3, v0, v4, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v5, p0

    move v6, p1

    move v7, p2

    .line 196
    invoke-virtual/range {v5 .. v10}, Lorg/codeaurora/ims/ImsUtImpl;->queryCallBarringForServiceClass(IIZLjava/lang/String;Landroid/os/Message;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    return v1
.end method

.method public queryCallBarringForServiceClass(IIZLjava/lang/String;Landroid/os/Message;)Z
    .locals 10

    .line 207
    const-string v0, "queryCallBarring"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsUtImpl;->enforceReadPhoneState(Ljava/lang/String;)V

    .line 208
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->isDisposed()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    if-nez v0, :cond_0

    goto :goto_1

    .line 213
    :cond_0
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsUtImpl;->getFacilityFromCbType(I)I

    move-result v4

    const/4 p1, -0x1

    if-ne v4, p1, :cond_1

    .line 215
    const-string p1, "Unsupported call barring facility code in queryCallBarring."

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return v1

    .line 226
    :cond_1
    iget-object v2, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    const/16 p0, 0xb

    if-ne v4, p0, :cond_2

    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v3, 0x3

    move v9, p3

    move-object v6, p4

    move-object v8, p5

    .line 219
    invoke-virtual/range {v2 .. v9}, Lorg/codeaurora/ims/ImsSenderRxr;->suppSvcStatus(II[Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;Z)V

    goto :goto_0

    :cond_2
    move v9, p3

    move-object v6, p4

    move-object v8, p5

    const/4 v3, 0x3

    const/4 v5, 0x0

    move v7, p2

    .line 226
    invoke-virtual/range {v2 .. v9}, Lorg/codeaurora/ims/ImsSenderRxr;->suppSvcStatus(II[Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;Z)V

    :goto_0
    const/4 p0, 0x1

    return p0

    .line 209
    :cond_3
    :goto_1
    const-string p1, "queryCallBarringForServiceClass"

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsUtImpl;->dumpw(Ljava/lang/String;)V

    return v1
.end method

.method public queryCallForward(ILjava/lang/String;)I
    .locals 1

    const/4 v0, 0x1

    .line 321
    invoke-virtual {p0, p1, p2, v0}, Lorg/codeaurora/ims/ImsUtImpl;->queryCFForServiceClass(ILjava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public queryCallWaiting()I
    .locals 5

    .line 379
    const-string v0, "queryCallWaiting"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsUtImpl;->enforceReadPhoneState(Ljava/lang/String;)V

    .line 380
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->isDisposed()Z

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    if-nez v1, :cond_0

    goto :goto_0

    .line 385
    :cond_0
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->getIdForRequest()I

    move-result v0

    if-gez v0, :cond_1

    .line 387
    const-string v0, "Invalid request id for queryCallWaiting."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return v2

    .line 390
    :cond_1
    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    const/4 v4, 0x0

    .line 391
    invoke-virtual {v2, v3, v0, v4, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 390
    invoke-virtual {v1, v4, p0}, Lorg/codeaurora/ims/ImsSenderRxr;->queryCallWaiting(ILandroid/os/Message;)V

    return v0

    .line 381
    :cond_2
    :goto_0
    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsUtImpl;->dumpw(Ljava/lang/String;)V

    return v2
.end method

.method public queryClip()I
    .locals 5

    .line 419
    const-string v0, "queryCLIP"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsUtImpl;->enforceReadPhoneState(Ljava/lang/String;)V

    .line 420
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->isDisposed()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    if-nez v0, :cond_0

    goto :goto_0

    .line 424
    :cond_0
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->getIdForRequest()I

    move-result v0

    if-gez v0, :cond_1

    .line 426
    const-string v0, "Invalid request id for queryCLIP."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return v1

    .line 429
    :cond_1
    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v4, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v1, p0}, Lorg/codeaurora/ims/ImsSenderRxr;->queryCLIP(Landroid/os/Message;)V

    return v0

    .line 421
    :cond_2
    :goto_0
    const-string v0, "queryClip"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsUtImpl;->dumpw(Ljava/lang/String;)V

    return v1
.end method

.method public queryClir()I
    .locals 5

    .line 400
    const-string v0, "queryCLIR"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsUtImpl;->enforceReadPhoneState(Ljava/lang/String;)V

    .line 401
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->isDisposed()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    if-nez v0, :cond_0

    goto :goto_0

    .line 405
    :cond_0
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->getIdForRequest()I

    move-result v0

    if-gez v0, :cond_1

    .line 407
    const-string v0, "Invalid request id for queryCLIR."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return v1

    .line 410
    :cond_1
    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v4, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v1, p0}, Lorg/codeaurora/ims/ImsSenderRxr;->getCLIR(Landroid/os/Message;)V

    return v0

    .line 402
    :cond_2
    :goto_0
    const-string v0, "queryClir"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsUtImpl;->dumpw(Ljava/lang/String;)V

    return v1
.end method

.method public queryColp()I
    .locals 5

    .line 457
    const-string v0, "queryCOLP"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsUtImpl;->enforceReadPhoneState(Ljava/lang/String;)V

    .line 458
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->isDisposed()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    if-nez v0, :cond_0

    goto :goto_0

    .line 462
    :cond_0
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->getIdForRequest()I

    move-result v0

    if-gez v0, :cond_1

    .line 464
    const-string v0, "Invalid request id for queryCLIP."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return v1

    .line 467
    :cond_1
    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xb

    const/4 v4, 0x0

    .line 468
    invoke-virtual {v2, v3, v0, v4, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 467
    const-string v2, "COLP"

    invoke-virtual {v1, v2, p0}, Lorg/codeaurora/ims/ImsSenderRxr;->getSuppSvc(Ljava/lang/String;Landroid/os/Message;)V

    return v0

    .line 459
    :cond_2
    :goto_0
    const-string v0, "queryColp"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsUtImpl;->dumpw(Ljava/lang/String;)V

    return v1
.end method

.method public queryColr()I
    .locals 5

    .line 438
    const-string v0, "queryCOLR"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsUtImpl;->enforceReadPhoneState(Ljava/lang/String;)V

    .line 439
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->isDisposed()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    if-nez v0, :cond_0

    goto :goto_0

    .line 443
    :cond_0
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->getIdForRequest()I

    move-result v0

    if-gez v0, :cond_1

    .line 445
    const-string v0, "Invalid request id for queryCOLR."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return v1

    .line 448
    :cond_1
    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v4, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v1, p0}, Lorg/codeaurora/ims/ImsSenderRxr;->getCOLR(Landroid/os/Message;)V

    return v0

    .line 440
    :cond_2
    :goto_0
    const-string v0, "queryColr"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsUtImpl;->dumpw(Ljava/lang/String;)V

    return v1
.end method

.method public setIdForRequest(I)V
    .locals 0

    .line 736
    iget-object p0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mLock:Ljava/lang/Object;

    monitor-enter p0

    .line 737
    :try_start_0
    sput p1, Lorg/codeaurora/ims/ImsUtImpl;->requestId:I

    .line 738
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setListener(Landroid/telephony/ims/ImsUtListener;)V
    .locals 3

    .line 709
    const-string v0, "setListener"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 710
    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 712
    const-string p1, "setListener - isDisposed"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 715
    :cond_0
    iget-object p0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mListenerImpl:Lorg/codeaurora/ims/ImsUtListenerImpl;

    iput-object p1, p0, Lorg/codeaurora/ims/ImsUtListenerImpl;->mListener:Landroid/telephony/ims/ImsUtListener;

    return-void
.end method

.method setOnClosedListener(Lorg/codeaurora/ims/ImsUtImpl$IOnCloseListener;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mOnCloseListener:Lorg/codeaurora/ims/ImsUtImpl$IOnCloseListener;

    return-void
.end method

.method public toImsCallForwardInfo([Lorg/codeaurora/ims/ImsCallForwardTimerInfo;)[Landroid/telephony/ims/ImsCallForwardInfo;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 272
    array-length v2, v1

    new-array v2, v2, [Landroid/telephony/ims/ImsCallForwardInfo;

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    .line 277
    :goto_0
    array-length v6, v1

    if-ge v4, v6, :cond_9

    .line 278
    aget-object v6, v1, v4

    .line 280
    iget v7, v6, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->status:I

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-ne v7, v9, :cond_0

    move v12, v9

    goto :goto_1

    .line 282
    :cond_0
    iget v7, v6, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->status:I

    if-nez v7, :cond_8

    move v12, v3

    .line 289
    :goto_1
    iget v7, v6, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->reason:I

    if-nez v7, :cond_1

    move v11, v3

    move/from16 v16, v5

    goto :goto_3

    .line 291
    :cond_1
    iget v7, v6, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->reason:I

    if-ne v7, v9, :cond_2

    :goto_2
    move/from16 v16, v5

    move v11, v9

    goto :goto_3

    .line 293
    :cond_2
    iget v7, v6, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->reason:I

    const/4 v9, 0x2

    if-ne v7, v9, :cond_3

    .line 296
    iget v5, v6, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->timeSeconds:I

    goto :goto_2

    .line 297
    :cond_3
    iget v7, v6, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->reason:I

    const/4 v9, 0x3

    if-ne v7, v9, :cond_4

    goto :goto_2

    .line 299
    :cond_4
    iget v7, v6, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->reason:I

    const/4 v9, 0x4

    if-ne v7, v9, :cond_5

    goto :goto_2

    .line 301
    :cond_5
    iget v7, v6, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->reason:I

    const/4 v9, 0x5

    if-ne v7, v9, :cond_6

    goto :goto_2

    .line 303
    :cond_6
    iget v7, v6, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->reason:I

    const/4 v9, 0x6

    if-ne v7, v9, :cond_7

    goto :goto_2

    .line 309
    :goto_3
    new-instance v10, Landroid/telephony/ims/ImsCallForwardInfo;

    iget v13, v6, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->toa:I

    iget v14, v6, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->serviceClass:I

    new-instance v15, Ljava/lang/String;

    iget-object v5, v6, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->number:Ljava/lang/String;

    invoke-direct {v15, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-direct/range {v10 .. v16}, Landroid/telephony/ims/ImsCallForwardInfo;-><init>(IIIILjava/lang/String;I)V

    aput-object v10, v2, v4

    add-int/lit8 v4, v4, 0x1

    move/from16 v5, v16

    goto :goto_0

    .line 306
    :cond_7
    const-string v1, "Bad reason in Query CF response."

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v8

    .line 285
    :cond_8
    const-string v1, "Bad status in Query CF response."

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v8

    :cond_9
    return-object v2
.end method

.method public updateCallBarring(II[Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    .line 495
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/codeaurora/ims/ImsUtImpl;->updateCallBarringForServiceClass(II[Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public updateCallBarringForServiceClass(II[Ljava/lang/String;I)I
    .locals 6

    .line 504
    const-string v5, ""

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/codeaurora/ims/ImsUtImpl;->updateCallBarringWithPassword(II[Ljava/lang/String;ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public updateCallBarringWithPassword(II[Ljava/lang/String;ILjava/lang/String;)I
    .locals 9

    .line 513
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "updateCallBarring"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->isDisposed()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    if-nez v0, :cond_0

    goto :goto_0

    .line 518
    :cond_0
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->getIdForRequest()I

    move-result v0

    if-gez v0, :cond_1

    .line 520
    const-string p1, "Invalid request id for updateCallBarring."

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return v1

    .line 525
    :cond_1
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsUtImpl;->getFacilityFromCbType(I)I

    move-result v4

    if-ne v4, v1, :cond_2

    .line 527
    const-string p1, "Unsupported call barring facility code in updateCallBarring."

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return v1

    .line 531
    :cond_2
    invoke-static {p2}, Lorg/codeaurora/ims/ImsUtImpl;->getIcbAction(I)I

    move-result v3

    const/16 p1, 0xb

    const/16 p2, 0xe

    const/4 v1, 0x0

    if-ne v4, p1, :cond_3

    .line 534
    iget-object v2, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object p1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    .line 539
    invoke-virtual {p1, p2, v0, v1, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    const/4 v7, 0x1

    move-object v5, p3

    move-object v6, p5

    .line 534
    invoke-virtual/range {v2 .. v8}, Lorg/codeaurora/ims/ImsSenderRxr;->suppSvcStatus(II[Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    return v0

    :cond_3
    move-object v6, p5

    .line 544
    iget-object v2, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    const/16 p1, 0x8

    if-ne v4, p1, :cond_4

    .line 541
    iget-object p1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    const/16 p2, 0x10

    .line 542
    invoke-virtual {p1, p2, v0, v1, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 541
    invoke-virtual {v2, v3, v6, p4, p0}, Lorg/codeaurora/ims/ImsSenderRxr;->setAllCallBarringStatus(ILjava/lang/String;ILandroid/os/Message;)V

    return v0

    .line 544
    :cond_4
    iget-object p1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    .line 546
    invoke-virtual {p1, p2, v0, v1, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    const/4 v5, 0x0

    move v7, p4

    .line 544
    invoke-virtual/range {v2 .. v8}, Lorg/codeaurora/ims/ImsSenderRxr;->suppSvcStatus(II[Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    return v0

    .line 515
    :cond_5
    :goto_0
    const-string p1, "updateCallBarringWithPassword"

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsUtImpl;->dumpw(Ljava/lang/String;)V

    return v1
.end method

.method public updateCallForward(IILjava/lang/String;II)I
    .locals 9

    .line 558
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "updateCallForward"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->isDisposed()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    if-nez v0, :cond_0

    goto :goto_0

    .line 563
    :cond_0
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->getIdForRequest()I

    move-result v0

    if-gez v0, :cond_1

    .line 565
    const-string p1, "Invalid request id for updateCallForward."

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return v1

    .line 569
    :cond_1
    iget-object v2, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    const/4 v4, 0x0

    .line 574
    invoke-virtual {v1, v3, v0, v4, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    move v3, p1

    move v4, p2

    move-object v6, p3

    move v5, p4

    move v7, p5

    .line 569
    invoke-virtual/range {v2 .. v8}, Lorg/codeaurora/ims/ImsSenderRxr;->setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V

    return v0

    .line 560
    :cond_2
    :goto_0
    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsUtImpl;->dumpw(Ljava/lang/String;)V

    return v1
.end method

.method public updateCallForwardUncondTimer(IIIIIILjava/lang/String;)I
    .locals 12

    .line 583
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->isDisposed()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    if-nez v0, :cond_0

    goto :goto_0

    .line 587
    :cond_0
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->getIdForRequest()I

    move-result v0

    if-gez v0, :cond_1

    .line 589
    const-string p1, "Invalid request id for updateCallForwardUncondTimer."

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return v1

    .line 593
    :cond_1
    iget-object v2, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    const/4 v4, 0x0

    .line 597
    invoke-virtual {v1, v3, v0, v4, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    const/4 v9, 0x1

    move v3, p1

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v10, p7

    .line 593
    invoke-virtual/range {v2 .. v11}, Lorg/codeaurora/ims/ImsSenderRxr;->setCallForwardUncondTimer(IIIIIIILjava/lang/String;Landroid/os/Message;)V

    return v0

    .line 584
    :cond_2
    :goto_0
    const-string p1, "updateCallForwardUncondTimer"

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsUtImpl;->dumpw(Ljava/lang/String;)V

    return v1
.end method

.method public updateCallWaiting(ZI)I
    .locals 5

    .line 606
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "updateCallWaiting"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->isDisposed()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    if-nez v0, :cond_0

    goto :goto_0

    .line 611
    :cond_0
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->getIdForRequest()I

    move-result v0

    if-gez v0, :cond_1

    .line 613
    const-string p1, "Invalid request id for updateCallForward."

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return v1

    .line 616
    :cond_1
    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    const/4 v4, 0x0

    .line 618
    invoke-virtual {v2, v3, v0, v4, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 616
    invoke-virtual {v1, p1, p2, p0}, Lorg/codeaurora/ims/ImsSenderRxr;->setCallWaiting(ZILandroid/os/Message;)V

    return v0

    .line 608
    :cond_2
    :goto_0
    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsUtImpl;->dumpw(Ljava/lang/String;)V

    return v1
.end method

.method public updateClip(Z)I
    .locals 5

    .line 647
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "updateCLIP"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->isDisposed()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    if-nez v0, :cond_0

    goto :goto_0

    .line 652
    :cond_0
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->getIdForRequest()I

    move-result v0

    if-gez v0, :cond_1

    .line 654
    const-string p1, "Invalid request id for updateCLIP."

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return v1

    .line 657
    :cond_1
    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x8

    const/4 v4, 0x0

    .line 659
    invoke-virtual {v2, v3, v0, v4, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 657
    const-string v2, "CLIP"

    invoke-virtual {v1, v2, p1, p0}, Lorg/codeaurora/ims/ImsSenderRxr;->setSuppSvc(Ljava/lang/String;ZLandroid/os/Message;)V

    return v0

    .line 649
    :cond_2
    :goto_0
    const-string p1, "updateClip"

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsUtImpl;->dumpw(Ljava/lang/String;)V

    return v1
.end method

.method public updateClir(I)I
    .locals 5

    .line 627
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "updateCLIR"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->isDisposed()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    if-nez v0, :cond_0

    goto :goto_0

    .line 632
    :cond_0
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->getIdForRequest()I

    move-result v0

    if-gez v0, :cond_1

    .line 634
    const-string p1, "Invalid request id for updateCLIR."

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return v1

    .line 637
    :cond_1
    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x6

    const/4 v4, 0x0

    .line 638
    invoke-virtual {v2, v3, v0, v4, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 637
    invoke-virtual {v1, p1, p0}, Lorg/codeaurora/ims/ImsSenderRxr;->setCLIR(ILandroid/os/Message;)V

    return v0

    .line 629
    :cond_2
    :goto_0
    const-string p1, "updateClir"

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsUtImpl;->dumpw(Ljava/lang/String;)V

    return v1
.end method

.method public updateColp(Z)I
    .locals 5

    .line 688
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "updateCOLP"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->isDisposed()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    if-nez v0, :cond_0

    goto :goto_0

    .line 693
    :cond_0
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->getIdForRequest()I

    move-result v0

    if-gez v0, :cond_1

    .line 695
    const-string p1, "Invalid request id for updateCOLP."

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return v1

    .line 698
    :cond_1
    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xc

    const/4 v4, 0x0

    .line 700
    invoke-virtual {v2, v3, v0, v4, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 698
    const-string v2, "COLP"

    invoke-virtual {v1, v2, p1, p0}, Lorg/codeaurora/ims/ImsSenderRxr;->setSuppSvc(Ljava/lang/String;ZLandroid/os/Message;)V

    return v0

    .line 690
    :cond_2
    :goto_0
    const-string p1, "updateColp"

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsUtImpl;->dumpw(Ljava/lang/String;)V

    return v1
.end method

.method public updateColr(I)I
    .locals 5

    .line 668
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "updateCOLR"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->isDisposed()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    if-nez v0, :cond_0

    goto :goto_0

    .line 673
    :cond_0
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->getIdForRequest()I

    move-result v0

    if-gez v0, :cond_1

    .line 675
    const-string p1, "Invalid request id for updateCOLR."

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return v1

    .line 678
    :cond_1
    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xa

    const/4 v4, 0x0

    .line 679
    invoke-virtual {v2, v3, v0, v4, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 678
    invoke-virtual {v1, p1, p0}, Lorg/codeaurora/ims/ImsSenderRxr;->setCOLR(ILandroid/os/Message;)V

    return v0

    .line 670
    :cond_2
    :goto_0
    const-string p1, "updateColr"

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsUtImpl;->dumpw(Ljava/lang/String;)V

    return v1
.end method
