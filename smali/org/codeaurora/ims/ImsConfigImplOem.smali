.class public Lorg/codeaurora/ims/ImsConfigImplOem;
.super Ljava/lang/Object;
.source "ImsConfigImplOem.java"


# static fields
.field private static final DBG:Z = true

.field private static final HEADER_SIZE:I = 0x8

.field private static final IMS_SERVICES_DEFAULT_ALL:I = 0x3

.field private static final OEM_RIL_REQUEST_GET_IMS_SUPPORTED_SERVICES:I = 0x50030

.field private static final OEM_RIL_REQUEST_GET_SSAC_HYSTERESIS_TIMER:I = 0x5003c

.field private static final OEM_RIL_REQUEST_SET_SSAC_HYSTERESIS_TIMER:I = 0x5003d

.field private static final OEM_RIL_UNSOL_IMS_SUPPORTED_SERVICES_CHANGED:I = 0x40017

.field private static final OEM_RIL_UNSOL_MCFG_MBN_CHANGED:I = 0x40016

.field private static final OEM_RIL_UNSOL_REV_IP_TRANS_CHANGE:I = 0x40018

.field private static final RESPONSE_BUFFER_SIZE:I = 0x800

.field private static sOemInstances:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lorg/codeaurora/ims/ImsConfigImplOem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mExecutor:Ljava/util/concurrent/ExecutorService;

.field private mImsSupportedServicesRetries:I

.field private mMotoExtTelephonyMgr:Lcom/motorola/android/telephony/MotoExtTelephonyManager;

.field private mPhoneId:I

.field private mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;


# direct methods
.method public static synthetic $r8$lambda$fERrg7UoF6BeA76sk-zSkBv0JQA(Lorg/codeaurora/ims/ImsConfigImplOem;)V
    .locals 0

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImplOem;->lambda$updateImsSupportedServicesAndNotify$0()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/codeaurora/ims/ImsConfigImplOem;->sOemInstances:Ljava/util/HashMap;

    return-void
.end method

.method constructor <init>(Lorg/codeaurora/ims/ImsServiceSub;Landroid/content/Context;I)V
    .locals 2

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mMotoExtTelephonyMgr:Lcom/motorola/android/telephony/MotoExtTelephonyManager;

    const/4 v1, 0x0

    .line 52
    iput v1, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mImsSupportedServicesRetries:I

    .line 246
    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 81
    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    .line 82
    iput-object p2, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mContext:Landroid/content/Context;

    .line 83
    iput p3, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mPhoneId:I

    .line 84
    invoke-static {p2, p3}, Lorg/codeaurora/ims/ImsUtils;->getActiveSubIdForPhoneId(Landroid/content/Context;I)I

    move-result p1

    .line 85
    new-instance p2, Lcom/motorola/android/telephony/MotoExtTelephonyManager;

    iget-object p3, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mContext:Landroid/content/Context;

    invoke-direct {p2, p3, p1}, Lcom/motorola/android/telephony/MotoExtTelephonyManager;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mMotoExtTelephonyMgr:Lcom/motorola/android/telephony/MotoExtTelephonyManager;

    return-void
.end method

.method private addRilOemHookHeader(Ljava/nio/ByteBuffer;II)V
    .locals 0

    const/4 p0, 0x0

    .line 296
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/high16 p0, 0xff0000

    and-int/2addr p0, p2

    shr-int/lit8 p0, p0, 0x10

    int-to-byte p0, p0

    .line 299
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const p0, 0xff00

    and-int/2addr p0, p2

    shr-int/lit8 p0, p0, 0x8

    int-to-byte p0, p0

    .line 300
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    and-int/lit16 p0, p2, 0xff

    int-to-byte p0, p0

    .line 301
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 304
    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    return-void
.end method

.method private bytesToHexString([B)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 310
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    array-length v0, p1

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v0, 0x0

    .line 312
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 314
    aget-byte v1, p1, v0

    shr-int/lit8 v1, v1, 0x4

    and-int/lit8 v1, v1, 0xf

    .line 315
    const-string v2, "0123456789abcdef"

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 316
    aget-byte v1, p1, v0

    and-int/lit8 v1, v1, 0xf

    .line 317
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 320
    :cond_1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;
    .locals 0

    .line 288
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 289
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method private declared-synchronized getExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 1

    monitor-enter p0

    .line 248
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mExecutor:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 249
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 251
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mExecutor:Ljava/util/concurrent/ExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static getInstance(I)Lorg/codeaurora/ims/ImsConfigImplOem;
    .locals 3

    .line 59
    sget-object v0, Lorg/codeaurora/ims/ImsConfigImplOem;->sOemInstances:Ljava/util/HashMap;

    monitor-enter v0

    .line 60
    :try_start_0
    sget-object v1, Lorg/codeaurora/ims/ImsConfigImplOem;->sOemInstances:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    sget-object v1, Lorg/codeaurora/ims/ImsConfigImplOem;->sOemInstances:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/codeaurora/ims/ImsConfigImplOem;

    monitor-exit v0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    .line 64
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 65
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static getInstance(Lorg/codeaurora/ims/ImsServiceSub;Landroid/content/Context;I)Lorg/codeaurora/ims/ImsConfigImplOem;
    .locals 3

    .line 69
    sget-object v0, Lorg/codeaurora/ims/ImsConfigImplOem;->sOemInstances:Ljava/util/HashMap;

    monitor-enter v0

    .line 70
    :try_start_0
    sget-object v1, Lorg/codeaurora/ims/ImsConfigImplOem;->sOemInstances:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    sget-object p0, Lorg/codeaurora/ims/ImsConfigImplOem;->sOemInstances:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/codeaurora/ims/ImsConfigImplOem;

    monitor-exit v0

    return-object p0

    .line 74
    :cond_0
    new-instance v1, Lorg/codeaurora/ims/ImsConfigImplOem;

    invoke-direct {v1, p0, p1, p2}, Lorg/codeaurora/ims/ImsConfigImplOem;-><init>(Lorg/codeaurora/ims/ImsServiceSub;Landroid/content/Context;I)V

    .line 75
    sget-object p0, Lorg/codeaurora/ims/ImsConfigImplOem;->sOemInstances:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    .line 77
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private getPhoneId()I
    .locals 0

    .line 391
    iget p0, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mPhoneId:I

    return p0
.end method

.method private isCarrierConfigLoaded()Z
    .locals 3

    .line 145
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mContext:Landroid/content/Context;

    iget v1, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mPhoneId:I

    const-string v2, "carrier_config_applied_bool"

    invoke-static {v0, v1, v2}, Lorg/codeaurora/ims/ImsUtils;->getBooleanCarrierConfig(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isCarrierConfigLoaded: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsConfigImplOem;->logi(Ljava/lang/String;)V

    :cond_0
    return v0
.end method

.method private isImsEnabledByPlatform()Z
    .locals 3

    .line 154
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mContext:Landroid/content/Context;

    iget v1, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mPhoneId:I

    invoke-static {v0, v1}, Lorg/codeaurora/ims/ImsUtils;->isVolteEnabledByPlatform(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mContext:Landroid/content/Context;

    iget v1, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mPhoneId:I

    .line 155
    invoke-static {v0, v1}, Lorg/codeaurora/ims/ImsUtils;->isWfcEnabledByPlatform(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_2

    .line 157
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isImsEnabledByPlatform: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsConfigImplOem;->logi(Ljava/lang/String;)V

    :cond_2
    return v0
.end method

.method private isImsStackReady()Z
    .locals 3

    .line 137
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsServiceSub;->getFeatureState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isImsStackReady: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsConfigImplOem;->logd(Ljava/lang/String;)V

    :cond_1
    return v0
.end method

.method private isValidImsSupportedServicesValue(I)Z
    .locals 0

    const/4 p0, -0x4

    if-eq p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$updateImsSupportedServicesAndNotify$0()V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    .line 179
    :goto_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsConfigImplOem;->getImsSupportedServices()I

    move-result v2

    .line 181
    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsConfigImplOem;->isValidImsSupportedServicesValue(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 182
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsServiceSub;->getConfigInterface()Lorg/codeaurora/ims/ImsConfigImpl;

    move-result-object v0

    const/16 v1, 0x49

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsConfigImpl;->notifyProvisionedValueChanged(II)V

    .line 208
    iget v0, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mImsSupportedServicesRetries:I

    if-lez v0, :cond_2

    .line 209
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImplOem;->updateImsServiceConfig()V

    goto :goto_2

    :cond_0
    add-int/lit8 v2, v1, 0x1

    .line 188
    monitor-enter p0

    const/4 v3, 0x5

    if-lt v2, v3, :cond_1

    .line 190
    :try_start_0
    const-string v1, "getImsSupportedServices failed finally, no more retry"

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsConfigImplOem;->logd(Ljava/lang/String;)V

    .line 191
    iput v0, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mImsSupportedServicesRetries:I

    .line 192
    monitor-exit p0

    goto :goto_2

    .line 195
    :cond_1
    iget v4, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mImsSupportedServicesRetries:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mImsSupportedServicesRetries:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    shl-int v1, v3, v1

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v3, v1

    .line 197
    :try_start_1
    invoke-virtual {p0, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 199
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateImsSupportedServices, InterruptedException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsConfigImplOem;->logd(Ljava/lang/String;)V

    .line 201
    :goto_1
    iget v1, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mImsSupportedServicesRetries:I

    if-nez v1, :cond_3

    .line 202
    const-string v0, "exit updateImsSupportedServicesAndNotify thread for new request"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsConfigImplOem;->logd(Ljava/lang/String;)V

    .line 203
    monitor-exit p0

    :cond_2
    :goto_2
    return-void

    .line 205
    :cond_3
    monitor-exit p0

    move v1, v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private logd(Ljava/lang/String;)V
    .locals 2

    .line 395
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImplOem;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 2

    .line 403
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImplOem;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private logi(Ljava/lang/String;)V
    .locals 2

    .line 399
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImplOem;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private sendBroadcastForEpdgIndicator(Z)V
    .locals 3

    .line 381
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.motorola.internal.intent.action.EPDG_CONNECTION_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 383
    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 384
    iget v1, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mPhoneId:I

    invoke-static {v0, v1}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 385
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sendBroadcastForEpdgIndicator, isConnected="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private sendMessage(I)Landroid/os/AsyncResult;
    .locals 3

    const/16 v0, 0x8

    .line 361
    new-array v0, v0, [B

    .line 362
    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsConfigImplOem;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, 0x0

    .line 364
    invoke-direct {p0, v1, p1, v2}, Lorg/codeaurora/ims/ImsConfigImplOem;->addRilOemHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 366
    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/ImsConfigImplOem;->sendRilOemHookMsg(I[B)Landroid/os/AsyncResult;

    move-result-object p0

    return-object p0
.end method

.method private sendMessage(IS)Landroid/os/AsyncResult;
    .locals 3

    const/16 v0, 0xa

    .line 370
    new-array v0, v0, [B

    .line 371
    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsConfigImplOem;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, 0x2

    .line 373
    invoke-direct {p0, v1, p1, v2}, Lorg/codeaurora/ims/ImsConfigImplOem;->addRilOemHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 374
    invoke-virtual {v1, p2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 376
    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/ImsConfigImplOem;->sendRilOemHookMsg(I[B)Landroid/os/AsyncResult;

    move-result-object p0

    return-object p0
.end method

.method private sendRilOemHookMsg(I[B)Landroid/os/AsyncResult;
    .locals 3

    .line 325
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mMotoExtTelephonyMgr:Lcom/motorola/android/telephony/MotoExtTelephonyManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 326
    new-instance p0, Landroid/os/RemoteException;

    const-string p2, "Cannot get Telephony Service"

    invoke-direct {p0, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 328
    new-instance p2, Landroid/os/AsyncResult;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p2, p1, v1, p0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-object p2

    :cond_0
    const/16 p1, 0x800

    .line 332
    new-array p1, p1, [B

    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "sendQcRilOemHookMsg: Outgoing Data is "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 334
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsConfigImplOem;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 333
    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsConfigImplOem;->logd(Ljava/lang/String;)V

    .line 336
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImplOem;->getPhoneId()I

    move-result v2

    invoke-static {v0, v2}, Lorg/codeaurora/ims/ImsUtils;->getActiveSubIdForPhoneId(Landroid/content/Context;I)I

    move-result v0

    .line 337
    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mMotoExtTelephonyMgr:Lcom/motorola/android/telephony/MotoExtTelephonyManager;

    invoke-virtual {v2, v0, p2, p1}, Lcom/motorola/android/telephony/MotoExtTelephonyManager;->vendorInvokeOemRilRequestRawSync(I[B[B)I

    move-result v0

    if-ltz v0, :cond_2

    if-lez v0, :cond_1

    .line 342
    new-array p2, v0, [B

    const/4 v2, 0x0

    .line 343
    invoke-static {p1, v2, p2, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 345
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "Response Data is "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 346
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsConfigImplOem;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 345
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsConfigImplOem;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 348
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Response retVal = "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsConfigImplOem;->logd(Ljava/lang/String;)V

    move-object p2, v1

    .line 350
    :goto_0
    new-instance p0, Landroid/os/AsyncResult;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1, p2, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-object p0

    .line 352
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "mMotoExtTelephonyMgr.sendOemRilRequestRaw returns "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsConfigImplOem;->logd(Ljava/lang/String;)V

    .line 353
    new-instance p0, Ljava/lang/Exception;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 355
    new-instance p1, Landroid/os/AsyncResult;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p1, p2, v0, p0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-object p1
.end method

.method private updateImsServiceConfig()V
    .locals 2

    .line 125
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImplOem;->isImsStackReady()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImplOem;->isCarrierConfigLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 129
    :cond_0
    monitor-enter p0

    .line 130
    :try_start_0
    iget v0, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mImsSupportedServicesRetries:I

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 131
    :goto_0
    iput v1, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mImsSupportedServicesRetries:I

    .line 132
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImplOem;->getPhoneId()I

    move-result p0

    invoke-static {v1, p0, v0}, Lorg/codeaurora/ims/ImsUtils;->sendUpdateImsServiceConfigRequest(Landroid/content/Context;IZ)V

    return-void

    :catchall_0
    move-exception v0

    .line 132
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public getImsSupportedServices()I
    .locals 5

    const v0, 0x50030

    .line 219
    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsConfigImplOem;->sendMessage(I)Landroid/os/AsyncResult;

    move-result-object v0

    .line 221
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-eqz v1, :cond_3

    .line 222
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "getImsSupportedServices: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsConfigImplOem;->loge(Ljava/lang/String;)V

    .line 223
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_4

    .line 224
    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_0

    mul-int/lit8 v0, v0, -0x1

    :cond_0
    const/4 v1, 0x2

    const/4 v4, -0x4

    if-ne v1, v0, :cond_2

    .line 227
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImplOem;->isImsEnabledByPlatform()Z

    move-result p0

    if-eqz p0, :cond_1

    return v4

    :cond_1
    return v2

    :cond_2
    const/16 p0, 0x2e

    if-ne p0, v0, :cond_4

    return v4

    .line 232
    :cond_3
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_5

    .line 233
    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [B

    if-eqz v0, :cond_4

    .line 234
    array-length v1, v0

    const/16 v4, 0x10

    if-le v1, v4, :cond_4

    .line 235
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0, v2, v4}, Ljava/lang/String;-><init>([BII)V

    .line 236
    const-string v0, "getImsSupportedServices, raw str: "

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsConfigImplOem;->logd(Ljava/lang/String;)V

    .line 237
    invoke-static {v1, v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    long-to-int v0, v0

    .line 238
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getImsSupportedServices: 0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsConfigImplOem;->logd(Ljava/lang/String;)V

    return v0

    :cond_4
    return v3

    .line 241
    :cond_5
    const-string v0, "getImsSupportedServices gets null response from RIL"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsConfigImplOem;->loge(Ljava/lang/String;)V

    return v3
.end method

.method public getTVolteHysTimer()I
    .locals 4

    const v0, 0x5003c

    .line 258
    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsConfigImplOem;->sendMessage(I)Landroid/os/AsyncResult;

    move-result-object v0

    .line 260
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const-string v2, "getTVolteHysTimer: "

    const/4 v3, -0x1

    if-eqz v1, :cond_0

    .line 261
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsConfigImplOem;->loge(Ljava/lang/String;)V

    return v3

    .line 262
    :cond_0
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 263
    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [B

    .line 264
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 265
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 266
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    .line 267
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsConfigImplOem;->logd(Ljava/lang/String;)V

    return v0

    .line 269
    :cond_1
    const-string v0, "getTVolteHysTimer gets null response from RIL"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsConfigImplOem;->loge(Ljava/lang/String;)V

    return v3
.end method

.method public handleOemHookRawEvent([B)V
    .locals 4

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handleOemHookRawEvent, data="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsConfigImplOem;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsConfigImplOem;->logd(Ljava/lang/String;)V

    if-eqz p1, :cond_7

    .line 91
    array-length v0, p1

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x3

    move v2, v0

    :goto_0
    if-ltz v1, :cond_1

    shl-int/lit8 v2, v2, 0x8

    const/4 v3, 0x4

    add-int/2addr v3, v1

    .line 100
    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    const v1, 0x40018

    if-ne v1, v2, :cond_3

    const/16 v1, 0xc

    .line 106
    aget-byte p1, p1, v1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    move v0, v1

    .line 107
    :cond_2
    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsConfigImplOem;->sendBroadcastForEpdgIndicator(Z)V

    .line 110
    :cond_3
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImplOem;->isImsStackReady()Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    const p1, 0x40017

    if-ne p1, v2, :cond_5

    .line 115
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "OEM_RIL_UNSOL_IMS_SUPPORTED_SERVICES_CHANGED = 0x"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsConfigImplOem;->logd(Ljava/lang/String;)V

    .line 116
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImplOem;->updateImsServiceConfig()V

    .line 117
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsConfigImplOem;->updateImsSupportedServicesAndNotify()V

    return-void

    :cond_5
    const p1, 0x40016

    if-ne p1, v2, :cond_6

    .line 119
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "OEM_RIL_UNSOL_MCFG_MBN_CHANGED = 0x"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsConfigImplOem;->logd(Ljava/lang/String;)V

    .line 120
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImplOem;->updateImsServiceConfig()V

    :cond_6
    :goto_1
    return-void

    .line 92
    :cond_7
    :goto_2
    const-string p1, "skip for invalid data"

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsConfigImplOem;->logd(Ljava/lang/String;)V

    return-void
.end method

.method public setTVolteHysTimer(I)I
    .locals 2

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setTVolteHysTimer: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsConfigImplOem;->logd(Ljava/lang/String;)V

    const v0, 0x5003d

    int-to-short p1, p1

    .line 277
    invoke-direct {p0, v0, p1}, Lorg/codeaurora/ims/ImsConfigImplOem;->sendMessage(IS)Landroid/os/AsyncResult;

    move-result-object p1

    .line 280
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsConfigImplOem;->loge(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public updateImsSupportedServicesAndNotify()V
    .locals 2

    const-string v0, "Enter updateImsSupportedServicesAndNotify, mImsSupportedServicesRetries: "

    .line 167
    monitor-enter p0

    .line 168
    :try_start_0
    iget v1, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mImsSupportedServicesRetries:I

    if-lez v1, :cond_0

    .line 169
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mImsSupportedServicesRetries:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsConfigImplOem;->logd(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 171
    iput v0, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mImsSupportedServicesRetries:I

    .line 173
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 174
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImplOem;->getExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lorg/codeaurora/ims/ImsConfigImplOem$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/codeaurora/ims/ImsConfigImplOem$$ExternalSyntheticLambda0;-><init>(Lorg/codeaurora/ims/ImsConfigImplOem;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void

    :catchall_0
    move-exception v0

    .line 174
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
