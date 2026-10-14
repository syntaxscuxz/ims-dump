.class public Lorg/codeaurora/ims/ImsRadioAidl;
.super Ljava/lang/Object;
.source "ImsRadioAidl.java"

# interfaces
.implements Lorg/codeaurora/ims/IImsRadio;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/ims/ImsRadioAidl$ImsRadioDeathRecipient;
    }
.end annotation


# static fields
.field private static final DSDS_TRANSITION_SUPPORTED_MODEM:Ljava/lang/String; = "MPSS.DE."

.field private static final DSDS_TRANSITION_SUPPORTED_MODEM_VERSION:I = 0x5

.field private static final IIMS_RADIO_SERVICE_NAME:Ljava/lang/String; = "vendor.qti.hardware.radio.ims.IImsRadio/imsradio"

.field static final LOG_TAG:Ljava/lang/String; = "ImsRadioAidl"

.field private static final STATUS_INTERROGATE:I = 0x2


# instance fields
.field private mBinder:Landroid/os/IBinder;

.field private final mContext:Landroid/content/Context;

.field private mDeathRecipient:Lorg/codeaurora/ims/ImsRadioAidl$ImsRadioDeathRecipient;

.field private volatile mImsRadio:Lvendor/qti/hardware/radio/ims/IImsRadio;

.field private mImsRadioIndication:Lvendor/qti/hardware/radio/ims/IImsRadioIndication;

.field private mImsRadioResponse:Lvendor/qti/hardware/radio/ims/IImsRadioResponse;

.field private mIndication:Lorg/codeaurora/ims/IImsRadioIndication;

.field private mIsDisposed:Z

.field private final mLock:Ljava/lang/Object;

.field private final mLogSuffix:Ljava/lang/String;

.field private mPhoneId:I

.field private mResponse:Lorg/codeaurora/ims/IImsRadioResponse;

.field private final mServiceInstance:Ljava/lang/String;

.field private final mTm:Landroid/telephony/TelephonyManager;


# direct methods
.method static bridge synthetic -$$Nest$minitImsRadio(Lorg/codeaurora/ims/ImsRadioAidl;)V
    .locals 0

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->initImsRadio()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mloge(Lorg/codeaurora/ims/ImsRadioAidl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsRadioAidl;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mresetService(Lorg/codeaurora/ims/ImsRadioAidl;)V
    .locals 0

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->resetService()V

    return-void
.end method

.method public constructor <init>(Lorg/codeaurora/ims/IImsRadioResponse;Lorg/codeaurora/ims/IImsRadioIndication;ILandroid/content/Context;)V
    .locals 1

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsRadioAidl;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 83
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsRadioAidl;->mIsDisposed:Z

    .line 94
    iput p3, p0, Lorg/codeaurora/ims/ImsRadioAidl;->mPhoneId:I

    .line 95
    iput-object p1, p0, Lorg/codeaurora/ims/ImsRadioAidl;->mResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 96
    iput-object p2, p0, Lorg/codeaurora/ims/ImsRadioAidl;->mIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    .line 97
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "vendor.qti.hardware.radio.ims.IImsRadio/imsradio"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lorg/codeaurora/ims/ImsRadioAidl;->mPhoneId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/codeaurora/ims/ImsRadioAidl;->mServiceInstance:Ljava/lang/String;

    .line 98
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "[SUB"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lorg/codeaurora/ims/ImsRadioAidl;->mPhoneId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/codeaurora/ims/ImsRadioAidl;->mLogSuffix:Ljava/lang/String;

    .line 99
    new-instance p1, Lorg/codeaurora/ims/ImsRadioAidl$ImsRadioDeathRecipient;

    invoke-direct {p1, p0}, Lorg/codeaurora/ims/ImsRadioAidl$ImsRadioDeathRecipient;-><init>(Lorg/codeaurora/ims/ImsRadioAidl;)V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsRadioAidl;->mDeathRecipient:Lorg/codeaurora/ims/ImsRadioAidl$ImsRadioDeathRecipient;

    .line 100
    iput-object p4, p0, Lorg/codeaurora/ims/ImsRadioAidl;->mContext:Landroid/content/Context;

    .line 101
    const-string p1, "phone"

    invoke-virtual {p4, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lorg/codeaurora/ims/ImsRadioAidl;->mTm:Landroid/telephony/TelephonyManager;

    .line 102
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->initImsRadio()V

    return-void
.end method

.method private containsModemVersion(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 282
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;
    .locals 1

    .line 155
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioAidl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 156
    :try_start_0
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioAidl;->mImsRadio:Lvendor/qti/hardware/radio/ims/IImsRadio;

    .line 157
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private initImsRadio()V
    .locals 7

    const-string v0, "initImsRadio: imsRadio availability: "

    .line 168
    :try_start_0
    const-string v1, "initImsRadio: connect to IImsRadio Stable AIDL"

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsRadioAidl;->log(Ljava/lang/String;)V

    .line 169
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioAidl;->mServiceInstance:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_0

    .line 171
    const-string v0, "initImsRadio: Stable AIDL is NOT used."

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioAidl;->loge(Ljava/lang/String;)V

    return-void

    .line 175
    :cond_0
    invoke-static {v1}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v2

    if-nez v2, :cond_1

    .line 177
    const-string v0, "initImsRadio: mAidlInstance is null"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioAidl;->loge(Ljava/lang/String;)V

    return-void

    .line 180
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz v2, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    move v4, v0

    .line 181
    :goto_0
    invoke-virtual {p0, v4}, Lorg/codeaurora/ims/ImsRadioAidl;->toAvailability(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 180
    invoke-direct {p0, v3}, Lorg/codeaurora/ims/ImsRadioAidl;->log(Ljava/lang/String;)V

    .line 183
    new-instance v3, Lorg/codeaurora/ims/ImsRadioResponseAidl;

    iget-object v4, p0, Lorg/codeaurora/ims/ImsRadioAidl;->mResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    iget v5, p0, Lorg/codeaurora/ims/ImsRadioAidl;->mPhoneId:I

    invoke-direct {v3, v4, v5}, Lorg/codeaurora/ims/ImsRadioResponseAidl;-><init>(Lorg/codeaurora/ims/IImsRadioResponse;I)V

    .line 184
    new-instance v4, Lorg/codeaurora/ims/ImsRadioIndicationAidl;

    iget-object v5, p0, Lorg/codeaurora/ims/ImsRadioAidl;->mIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    iget v6, p0, Lorg/codeaurora/ims/ImsRadioAidl;->mPhoneId:I

    invoke-direct {v4, v5, v6}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;-><init>(Lorg/codeaurora/ims/IImsRadioIndication;I)V

    .line 187
    iget-object v5, p0, Lorg/codeaurora/ims/ImsRadioAidl;->mLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    :try_start_1
    iget-boolean v6, p0, Lorg/codeaurora/ims/ImsRadioAidl;->mIsDisposed:Z

    if-eqz v6, :cond_3

    .line 189
    const-string v0, "initImsRadio: already disposed. exiting."

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioAidl;->log(Ljava/lang/String;)V

    .line 190
    monitor-exit v5

    return-void

    .line 192
    :cond_3
    iput-object v1, p0, Lorg/codeaurora/ims/ImsRadioAidl;->mBinder:Landroid/os/IBinder;

    .line 193
    iput-object v3, p0, Lorg/codeaurora/ims/ImsRadioAidl;->mImsRadioResponse:Lvendor/qti/hardware/radio/ims/IImsRadioResponse;

    .line 194
    iput-object v4, p0, Lorg/codeaurora/ims/ImsRadioAidl;->mImsRadioIndication:Lvendor/qti/hardware/radio/ims/IImsRadioIndication;

    .line 195
    invoke-interface {v2, v3, v4}, Lvendor/qti/hardware/radio/ims/IImsRadio;->setCallback(Lvendor/qti/hardware/radio/ims/IImsRadioResponse;Lvendor/qti/hardware/radio/ims/IImsRadioIndication;)V

    .line 196
    iput-object v2, p0, Lorg/codeaurora/ims/ImsRadioAidl;->mImsRadio:Lvendor/qti/hardware/radio/ims/IImsRadio;

    .line 197
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 198
    :try_start_2
    iget-object v2, p0, Lorg/codeaurora/ims/ImsRadioAidl;->mDeathRecipient:Lorg/codeaurora/ims/ImsRadioAidl$ImsRadioDeathRecipient;

    invoke-interface {v1, v2, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 199
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioAidl;->mIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {v0}, Lorg/codeaurora/ims/IImsRadioIndication;->onServiceUp()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catchall_0
    move-exception v0

    .line 197
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    .line 206
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "initImsRadio: Exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioAidl;->loge(Ljava/lang/String;)V

    .line 207
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->resetService()V

    goto :goto_1

    :catch_1
    move-exception v0

    .line 202
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "initImsRadio: RemoteException: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioAidl;->loge(Ljava/lang/String;)V

    .line 203
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->resetService()V

    .line 204
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->initImsRadio()V

    :goto_1
    return-void
.end method

.method public static isAidlAvailable(I)Z
    .locals 2

    const-string v0, "vendor.qti.hardware.radio.ims.IImsRadio/imsradio"

    .line 213
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/os/ServiceManager;->isDeclared(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 216
    :catch_0
    const-string p0, "ImsRadioAidl"

    const-string v0, "Security exception while call into AIDL"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method private isDsdsTransitionSupported()Z
    .locals 5

    .line 261
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v0

    const/16 v1, 0xc

    invoke-static {v0, v1}, Lorg/codeaurora/ims/StableAidl;->isVersionSupported(Lvendor/qti/hardware/radio/ims/IImsRadio;I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 264
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioAidl;->mTm:Landroid/telephony/TelephonyManager;

    iget v2, p0, Lorg/codeaurora/ims/ImsRadioAidl;->mPhoneId:I

    invoke-virtual {v0, v2}, Landroid/telephony/TelephonyManager;->getBasebandVersionForPhone(I)Ljava/lang/String;

    move-result-object v0

    .line 265
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "BasebandVersion string: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_3

    .line 266
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 271
    :cond_1
    const-string v2, "(?<=\\d)"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 272
    array-length v2, v0

    if-gtz v2, :cond_2

    return v1

    .line 275
    :cond_2
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v2

    .line 276
    aget-object v0, v0, v1

    const-string v3, "MPSS.DE."

    invoke-direct {p0, v0, v3}, Lorg/codeaurora/ims/ImsRadioAidl;->containsModemVersion(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x5

    .line 277
    invoke-direct {p0, v2, v0}, Lorg/codeaurora/ims/ImsRadioAidl;->isSupportedModemVersion(II)Z

    move-result p0

    if-eqz p0, :cond_3

    return v4

    :cond_3
    :goto_0
    return v1
.end method

.method private isSupportedModemVersion(II)Z
    .locals 0

    if-lt p1, p2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/codeaurora/ims/ImsRadioAidl;->mLogSuffix:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/codeaurora/ims/ImsRadioAidl;->mLogSuffix:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private logv(Ljava/lang/String;)V
    .locals 1

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/codeaurora/ims/ImsRadioAidl;->mLogSuffix:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private resetService()V
    .locals 3

    .line 134
    const-string v0, "IImsRadio service down: Resetting HAL interfaces."

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioAidl;->log(Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioAidl;->mIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {v0}, Lorg/codeaurora/ims/IImsRadioIndication;->onServiceDown()V

    .line 137
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioAidl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 138
    :try_start_0
    iput-object v1, p0, Lorg/codeaurora/ims/ImsRadioAidl;->mImsRadio:Lvendor/qti/hardware/radio/ims/IImsRadio;

    .line 139
    iput-object v1, p0, Lorg/codeaurora/ims/ImsRadioAidl;->mImsRadioResponse:Lvendor/qti/hardware/radio/ims/IImsRadioResponse;

    .line 140
    iput-object v1, p0, Lorg/codeaurora/ims/ImsRadioAidl;->mImsRadioIndication:Lvendor/qti/hardware/radio/ims/IImsRadioIndication;

    .line 141
    iget-object v2, p0, Lorg/codeaurora/ims/ImsRadioAidl;->mBinder:Landroid/os/IBinder;

    .line 142
    iput-object v1, p0, Lorg/codeaurora/ims/ImsRadioAidl;->mBinder:Landroid/os/IBinder;

    .line 143
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 146
    :try_start_1
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioAidl;->mDeathRecipient:Lorg/codeaurora/ims/ImsRadioAidl$ImsRadioDeathRecipient;

    const/4 v1, 0x0

    invoke-interface {v2, v0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IImsRadio binder is null"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioAidl;->loge(Ljava/lang/String;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    .line 143
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method


# virtual methods
.method public abortConference(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 667
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidl;->fromConferenceAbortReasonInfo(I)Lvendor/qti/hardware/radio/ims/ConferenceAbortReasonInfo;

    move-result-object p2

    .line 668
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lvendor/qti/hardware/radio/ims/IImsRadio;->abortConference(ILvendor/qti/hardware/radio/ims/ConferenceAbortReasonInfo;)V

    return-void
.end method

.method public acknowledgeSms(III)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 379
    invoke-static {p2, p3}, Lorg/codeaurora/ims/StableAidl;->fromAcknowledgeSms(II)Lvendor/qti/hardware/radio/ims/AcknowledgeSmsInfo;

    move-result-object p2

    .line 380
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lvendor/qti/hardware/radio/ims/IImsRadio;->acknowledgeSms(ILvendor/qti/hardware/radio/ims/AcknowledgeSmsInfo;)V

    return-void
.end method

.method public acknowledgeSmsReport(III)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 386
    invoke-static {p2, p3}, Lorg/codeaurora/ims/StableAidl;->fromAcknowledgeSmsReport(II)Lvendor/qti/hardware/radio/ims/AcknowledgeSmsReportInfo;

    move-result-object p2

    .line 388
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lvendor/qti/hardware/radio/ims/IImsRadio;->acknowledgeSmsReport(ILvendor/qti/hardware/radio/ims/AcknowledgeSmsReportInfo;)V

    return-void
.end method

.method public addParticipant(ILjava/lang/String;ILorg/codeaurora/ims/CallDetails;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 305
    invoke-static {p2, p3, p4, v0, v1}, Lorg/codeaurora/ims/StableAidl;->fromDialRequest(Ljava/lang/String;ILorg/codeaurora/ims/CallDetails;ZLorg/codeaurora/ims/RedialInfo;)Lvendor/qti/hardware/radio/ims/DialRequest;

    move-result-object p2

    .line 307
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object p3

    invoke-interface {p3, p1, p2}, Lvendor/qti/hardware/radio/ims/IImsRadio;->addParticipant(ILvendor/qti/hardware/radio/ims/DialRequest;)V

    .line 308
    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "addParticipant: token = "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " address = "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Lvendor/qti/hardware/radio/ims/DialRequest;->address:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " callType = "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Lvendor/qti/hardware/radio/ims/DialRequest;->callDetails:Lvendor/qti/hardware/radio/ims/CallDetails;

    iget p1, p1, Lvendor/qti/hardware/radio/ims/CallDetails;->callType:I

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " callDomain = "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Lvendor/qti/hardware/radio/ims/DialRequest;->callDetails:Lvendor/qti/hardware/radio/ims/CallDetails;

    iget p1, p1, Lvendor/qti/hardware/radio/ims/CallDetails;->callDomain:I

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " isConferenceUri = "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p2, Lvendor/qti/hardware/radio/ims/DialRequest;->isConferenceUri:Z

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "isCallPull ="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p2, Lvendor/qti/hardware/radio/ims/DialRequest;->isCallPull:Z

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " isEncrypted = "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p2, Lvendor/qti/hardware/radio/ims/DialRequest;->isEncrypted:Z

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsRadioAidl;->logv(Ljava/lang/String;)V

    return-void
.end method

.method public answer(IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 356
    invoke-static {p2, p3, p4}, Lorg/codeaurora/ims/StableAidl;->fromAnswerRequest(III)Lvendor/qti/hardware/radio/ims/AnswerRequest;

    move-result-object p2

    .line 358
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lvendor/qti/hardware/radio/ims/IImsRadio;->answer(ILvendor/qti/hardware/radio/ims/AnswerRequest;)V

    return-void
.end method

.method public cancelModifyCall(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 443
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lvendor/qti/hardware/radio/ims/IImsRadio;->cancelModifyCall(II)V

    return-void
.end method

.method public cancelPendingUssd(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 350
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object p0

    invoke-interface {p0, p1}, Lvendor/qti/hardware/radio/ims/IImsRadio;->cancelPendingUssd(I)V

    return-void
.end method

.method public conference(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 464
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object p0

    invoke-interface {p0, p1}, Lvendor/qti/hardware/radio/ims/IImsRadio;->conference(I)V

    return-void
.end method

.method public deflectCall(IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 364
    invoke-static {p2, p3}, Lorg/codeaurora/ims/StableAidl;->fromDeflectCall(ILjava/lang/String;)Lvendor/qti/hardware/radio/ims/DeflectRequestInfo;

    move-result-object p2

    .line 365
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lvendor/qti/hardware/radio/ims/IImsRadio;->deflectCall(ILvendor/qti/hardware/radio/ims/DeflectRequestInfo;)V

    return-void
.end method

.method public dial(ILjava/lang/String;Lorg/codeaurora/ims/EmergencyCallInfo;ILorg/codeaurora/ims/CallDetails;ZLorg/codeaurora/ims/CallComposerInfo;Lorg/codeaurora/ims/RedialInfo;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 321
    invoke-static {p2, p4, p5, p6, p8}, Lorg/codeaurora/ims/StableAidl;->fromDialRequest(Ljava/lang/String;ILorg/codeaurora/ims/CallDetails;ZLorg/codeaurora/ims/RedialInfo;)Lvendor/qti/hardware/radio/ims/DialRequest;

    move-result-object v0

    if-eqz p3, :cond_0

    move-object v2, p2

    move-object v1, p3

    move v3, p4

    move-object v4, p5

    move v5, p6

    move-object v6, p8

    .line 324
    invoke-static/range {v1 .. v6}, Lorg/codeaurora/ims/StableAidl;->fromEmergencyDialRequest(Lorg/codeaurora/ims/EmergencyCallInfo;Ljava/lang/String;ILorg/codeaurora/ims/CallDetails;ZLorg/codeaurora/ims/RedialInfo;)Lvendor/qti/hardware/radio/ims/EmergencyDialRequest;

    move-result-object p2

    .line 326
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object p3

    invoke-interface {p3, p1, p2}, Lvendor/qti/hardware/radio/ims/IImsRadio;->emergencyDial(ILvendor/qti/hardware/radio/ims/EmergencyDialRequest;)V

    goto :goto_0

    :cond_0
    move-object p3, p2

    move-object v6, p8

    if-eqz p7, :cond_1

    move-object p2, p7

    move-object p7, v6

    .line 329
    invoke-static/range {p2 .. p7}, Lorg/codeaurora/ims/StableAidl;->fromCallComposerDialRequest(Lorg/codeaurora/ims/CallComposerInfo;Ljava/lang/String;ILorg/codeaurora/ims/CallDetails;ZLorg/codeaurora/ims/RedialInfo;)Lvendor/qti/hardware/radio/ims/CallComposerDialRequest;

    move-result-object p2

    .line 331
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object p3

    invoke-interface {p3, p1, p2}, Lvendor/qti/hardware/radio/ims/IImsRadio;->callComposerDial(ILvendor/qti/hardware/radio/ims/CallComposerDialRequest;)V

    goto :goto_0

    .line 333
    :cond_1
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object p2

    invoke-interface {p2, p1, v0}, Lvendor/qti/hardware/radio/ims/IImsRadio;->dial(ILvendor/qti/hardware/radio/ims/DialRequest;)V

    .line 335
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "dial: address = "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, v0, Lvendor/qti/hardware/radio/ims/DialRequest;->address:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "callType ="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, v0, Lvendor/qti/hardware/radio/ims/DialRequest;->callDetails:Lvendor/qti/hardware/radio/ims/CallDetails;

    iget p2, p2, Lvendor/qti/hardware/radio/ims/CallDetails;->callType:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "callDomain ="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, v0, Lvendor/qti/hardware/radio/ims/DialRequest;->callDetails:Lvendor/qti/hardware/radio/ims/CallDetails;

    iget p2, p2, Lvendor/qti/hardware/radio/ims/CallDetails;->callDomain:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "isConferenceUri ="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, v0, Lvendor/qti/hardware/radio/ims/DialRequest;->isConferenceUri:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, "isCallPull ="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, v0, Lvendor/qti/hardware/radio/ims/DialRequest;->isCallPull:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, "isEncrypted ="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, v0, Lvendor/qti/hardware/radio/ims/DialRequest;->isEncrypted:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, "rttMode ="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, v0, Lvendor/qti/hardware/radio/ims/DialRequest;->callDetails:Lvendor/qti/hardware/radio/ims/CallDetails;

    iget p2, p2, Lvendor/qti/hardware/radio/ims/CallDetails;->rttMode:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsRadioAidl;->logv(Ljava/lang/String;)V

    return-void
.end method

.method public dispose()V
    .locals 2

    .line 296
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioAidl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 297
    :try_start_0
    iput-boolean v1, p0, Lorg/codeaurora/ims/ImsRadioAidl;->mIsDisposed:Z

    .line 298
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 299
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->resetService()V

    return-void

    :catchall_0
    move-exception p0

    .line 298
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public exitEmergencyCallbackMode(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 570
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object p0

    invoke-interface {p0, p1}, Lvendor/qti/hardware/radio/ims/IImsRadio;->exitEmergencyCallbackMode(I)V

    return-void
.end method

.method public exitSmsCallBackMode(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 645
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object p0

    invoke-interface {p0, p1}, Lvendor/qti/hardware/radio/ims/IImsRadio;->exitSmsCallBackMode(I)V

    return-void
.end method

.method public explicitCallTransfer(IIILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 470
    invoke-static {p2, p3, p4, p5}, Lorg/codeaurora/ims/StableAidl;->fromEctInfo(IILjava/lang/String;I)Lvendor/qti/hardware/radio/ims/ExplicitCallTransferInfo;

    move-result-object p2

    .line 472
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lvendor/qti/hardware/radio/ims/IImsRadio;->explicitCallTransfer(ILvendor/qti/hardware/radio/ims/ExplicitCallTransferInfo;)V

    return-void
.end method

.method public getCallWaiting(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 529
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lvendor/qti/hardware/radio/ims/IImsRadio;->getCallWaiting(II)V

    return-void
.end method

.method public getClip(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 559
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object p0

    invoke-interface {p0, p1}, Lvendor/qti/hardware/radio/ims/IImsRadio;->getClip(I)V

    return-void
.end method

.method public getClir(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 518
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object p0

    invoke-interface {p0, p1}, Lvendor/qti/hardware/radio/ims/IImsRadio;->getClir(I)V

    return-void
.end method

.method public getColr(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 584
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object p0

    invoke-interface {p0, p1}, Lvendor/qti/hardware/radio/ims/IImsRadio;->getColr(I)V

    return-void
.end method

.method public getConfig(IIZILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 487
    invoke-static {p2, p3, p4, p5, p6}, Lorg/codeaurora/ims/StableAidl;->fromImsConfig(IZILjava/lang/String;I)Lvendor/qti/hardware/radio/ims/ConfigInfo;

    move-result-object p2

    .line 489
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lvendor/qti/hardware/radio/ims/IImsRadio;->getConfig(ILvendor/qti/hardware/radio/ims/ConfigInfo;)V

    return-void
.end method

.method public getImsRegistrationState(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 426
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object p0

    invoke-interface {p0, p1}, Lvendor/qti/hardware/radio/ims/IImsRadio;->getImsRegistrationState(I)V

    return-void
.end method

.method public getImsSubConfig(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 605
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object p0

    invoke-interface {p0, p1}, Lvendor/qti/hardware/radio/ims/IImsRadio;->getImsSubConfig(I)V

    return-void
.end method

.method public getRtpErrorStatistics(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 600
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object p0

    invoke-interface {p0, p1}, Lvendor/qti/hardware/radio/ims/IImsRadio;->getRtpErrorStatistics(I)V

    return-void
.end method

.method public getRtpStatistics(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 595
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object p0

    invoke-interface {p0, p1}, Lvendor/qti/hardware/radio/ims/IImsRadio;->getRtpStatistics(I)V

    return-void
.end method

.method public getSmsFormat()Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 393
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object p0

    invoke-interface {p0}, Lvendor/qti/hardware/radio/ims/IImsRadio;->getSmsFormat()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hangup(IILjava/lang/String;Ljava/lang/String;ZILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 406
    invoke-static/range {p2 .. p7}, Lorg/codeaurora/ims/StableAidl;->fromHangup(ILjava/lang/String;Ljava/lang/String;ZILjava/lang/String;)Lvendor/qti/hardware/radio/ims/HangupRequestInfo;

    move-result-object p2

    .line 408
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lvendor/qti/hardware/radio/ims/IImsRadio;->hangup(ILvendor/qti/hardware/radio/ims/HangupRequestInfo;)V

    return-void
.end method

.method public hold(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 454
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lvendor/qti/hardware/radio/ims/IImsRadio;->hold(II)V

    return-void
.end method

.method public isAlive()Z
    .locals 0

    .line 291
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isFeatureSupported(I)Z
    .locals 1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    return v0

    .line 254
    :pswitch_0
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->isDsdsTransitionSupported()Z

    move-result p0

    return p0

    .line 251
    :pswitch_1
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object p0

    const/16 p1, 0xb

    invoke-static {p0, p1}, Lorg/codeaurora/ims/StableAidl;->isVersionSupported(Lvendor/qti/hardware/radio/ims/IImsRadio;I)Z

    move-result p0

    return p0

    .line 248
    :pswitch_2
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object p0

    const/16 p1, 0x8

    invoke-static {p0, p1}, Lorg/codeaurora/ims/StableAidl;->isVersionSupported(Lvendor/qti/hardware/radio/ims/IImsRadio;I)Z

    move-result p0

    return p0

    .line 245
    :pswitch_3
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object p0

    const/4 p1, 0x7

    invoke-static {p0, p1}, Lorg/codeaurora/ims/StableAidl;->isVersionSupported(Lvendor/qti/hardware/radio/ims/IImsRadio;I)Z

    move-result p0

    return p0

    .line 242
    :pswitch_4
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object p0

    const/4 p1, 0x4

    invoke-static {p0, p1}, Lorg/codeaurora/ims/StableAidl;->isVersionSupported(Lvendor/qti/hardware/radio/ims/IImsRadio;I)Z

    move-result p0

    return p0

    .line 239
    :pswitch_5
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object p0

    const/4 p1, 0x3

    invoke-static {p0, p1}, Lorg/codeaurora/ims/StableAidl;->isVersionSupported(Lvendor/qti/hardware/radio/ims/IImsRadio;I)Z

    move-result p0

    return p0

    .line 236
    :pswitch_6
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object p0

    const/4 p1, 0x2

    invoke-static {p0, p1}, Lorg/codeaurora/ims/StableAidl;->isVersionSupported(Lvendor/qti/hardware/radio/ims/IImsRadio;I)Z

    move-result p0

    return p0

    .line 233
    :pswitch_7
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public modifyCallConfirm(ILorg/codeaurora/ims/CallModify;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 449
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object p0

    invoke-static {p2}, Lorg/codeaurora/ims/StableAidl;->fromCallModify(Lorg/codeaurora/ims/CallModify;)Lvendor/qti/hardware/radio/ims/CallModifyInfo;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lvendor/qti/hardware/radio/ims/IImsRadio;->modifyCallConfirm(ILvendor/qti/hardware/radio/ims/CallModifyInfo;)V

    return-void
.end method

.method public modifyCallInitiate(ILorg/codeaurora/ims/CallModify;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 438
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object p0

    invoke-static {p2}, Lorg/codeaurora/ims/StableAidl;->fromCallModify(Lorg/codeaurora/ims/CallModify;)Lvendor/qti/hardware/radio/ims/CallModifyInfo;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lvendor/qti/hardware/radio/ims/IImsRadio;->modifyCallInitiate(ILvendor/qti/hardware/radio/ims/CallModifyInfo;)V

    return-void
.end method

.method public queryCallForwardStatus(IIILjava/lang/String;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v3, 0x2

    const/4 v4, 0x0

    move v0, p2

    move v1, p3

    move-object v2, p4

    move v5, p5

    .line 552
    invoke-static/range {v0 .. v5}, Lorg/codeaurora/ims/StableAidl;->fromImsCallForwardTimerInfo(IILjava/lang/String;IIZ)Lvendor/qti/hardware/radio/ims/CallForwardInfo;

    move-result-object p2

    .line 554
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lvendor/qti/hardware/radio/ims/IImsRadio;->queryCallForwardStatus(ILvendor/qti/hardware/radio/ims/CallForwardInfo;)V

    return-void
.end method

.method public queryMultiSimVoiceCapability(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 640
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object p0

    invoke-interface {p0, p1}, Lvendor/qti/hardware/radio/ims/IImsRadio;->queryMultiSimVoiceCapability(I)V

    return-void
.end method

.method public queryServiceStatus(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 413
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object p0

    invoke-interface {p0, p1}, Lvendor/qti/hardware/radio/ims/IImsRadio;->queryServiceStatus(I)V

    return-void
.end method

.method public queryVirtualLineInfo(ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 615
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lvendor/qti/hardware/radio/ims/IImsRadio;->queryVirtualLineInfo(ILjava/lang/String;)V

    return-void
.end method

.method public registerMultiIdentityLines(ILjava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "Lorg/codeaurora/ims/MultiIdentityLineInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 622
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidl;->fromMultiIdentityLineInfoList(Ljava/util/Collection;)[Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;

    move-result-object p2

    .line 623
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lvendor/qti/hardware/radio/ims/IImsRadio;->registerMultiIdentityLines(I[Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;)V

    return-void
.end method

.method public requestRegistrationChange(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 432
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object p0

    invoke-static {p2}, Lorg/codeaurora/ims/StableAidl;->fromRegState(I)I

    move-result p2

    invoke-interface {p0, p1, p2}, Lvendor/qti/hardware/radio/ims/IImsRadio;->requestRegistrationChange(II)V

    return-void
.end method

.method public resume(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 459
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lvendor/qti/hardware/radio/ims/IImsRadio;->resume(II)V

    return-void
.end method

.method public sendDtmf(IIC)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 494
    invoke-static {p2, p3}, Lorg/codeaurora/ims/StableAidl;->fromDtmf(IC)Lvendor/qti/hardware/radio/ims/DtmfInfo;

    move-result-object p2

    .line 495
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lvendor/qti/hardware/radio/ims/IImsRadio;->sendDtmf(ILvendor/qti/hardware/radio/ims/DtmfInfo;)V

    return-void
.end method

.method public sendGeolocationInfo(IDDLandroid/location/Address;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 399
    invoke-static {p2, p3, p4, p5, p6}, Lorg/codeaurora/ims/StableAidl;->fromGeoLocation(DDLandroid/location/Address;)Lvendor/qti/hardware/radio/ims/GeoLocationInfo;

    move-result-object p2

    .line 400
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lvendor/qti/hardware/radio/ims/IImsRadio;->sendGeolocationInfo(ILvendor/qti/hardware/radio/ims/GeoLocationInfo;)V

    return-void
.end method

.method public sendRttMessage(ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 610
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lvendor/qti/hardware/radio/ims/IImsRadio;->sendRttMessage(ILjava/lang/String;)V

    return-void
.end method

.method public sendSipDtmf(ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 628
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lvendor/qti/hardware/radio/ims/IImsRadio;->sendSipDtmf(ILjava/lang/String;)V

    return-void
.end method

.method public sendSms(IILjava/lang/String;Ljava/lang/String;Z[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 371
    invoke-static {p2, p3, p4, p5, p6}, Lorg/codeaurora/ims/StableAidl;->fromSmsRequest(ILjava/lang/String;Ljava/lang/String;Z[B)Lvendor/qti/hardware/radio/ims/SmsSendRequest;

    move-result-object p2

    .line 373
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lvendor/qti/hardware/radio/ims/IImsRadio;->sendSms(ILvendor/qti/hardware/radio/ims/SmsSendRequest;)V

    return-void
.end method

.method public sendUssd(ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 345
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lvendor/qti/hardware/radio/ims/IImsRadio;->sendUssd(ILjava/lang/String;)V

    return-void
.end method

.method public sendVosActionInfo(ILorg/codeaurora/ims/VosActionInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 655
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object p0

    invoke-static {p2}, Lorg/codeaurora/ims/StableAidl;->fromVosActionInfo(Lorg/codeaurora/ims/VosActionInfo;)Lvendor/qti/hardware/radio/ims/VosActionInfo;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lvendor/qti/hardware/radio/ims/IImsRadio;->sendVosActionInfo(ILvendor/qti/hardware/radio/ims/VosActionInfo;)V

    return-void
.end method

.method public sendVosSupportStatus(IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 650
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lvendor/qti/hardware/radio/ims/IImsRadio;->sendVosSupportStatus(IZ)V

    return-void
.end method

.method public setAllCallBarringStatus(IILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 674
    invoke-static {p2, p3, p4}, Lorg/codeaurora/ims/StableAidl;->fromCbAll(ILjava/lang/String;I)Lvendor/qti/hardware/radio/ims/CallBarringInfo;

    move-result-object p2

    .line 676
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lvendor/qti/hardware/radio/ims/IImsRadio;->setAllCallBarringStatus(ILvendor/qti/hardware/radio/ims/CallBarringInfo;)V

    return-void
.end method

.method public setCallForwardStatus(IIIIIIIILjava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move v0, p7

    move p7, p2

    move p2, v0

    move v0, p8

    move p8, p3

    move p3, v0

    move-object v0, p9

    move p9, p4

    move-object p4, v0

    move v0, p10

    move p10, p5

    move p5, p6

    move p6, v0

    .line 544
    invoke-static/range {p2 .. p10}, Lorg/codeaurora/ims/StableAidl;->fromImsCallForwardTimerInfo(IILjava/lang/String;IIIIII)Lvendor/qti/hardware/radio/ims/CallForwardInfo;

    move-result-object p2

    .line 546
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lvendor/qti/hardware/radio/ims/IImsRadio;->setCallForwardStatus(ILvendor/qti/hardware/radio/ims/CallForwardInfo;)V

    return-void
.end method

.method public setCallWaiting(IZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 535
    invoke-static {p2, p3}, Lorg/codeaurora/ims/StableAidl;->fromCallWaiting(ZI)Lvendor/qti/hardware/radio/ims/CallWaitingInfo;

    move-result-object p2

    .line 536
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lvendor/qti/hardware/radio/ims/IImsRadio;->setCallWaiting(ILvendor/qti/hardware/radio/ims/CallWaitingInfo;)V

    return-void
.end method

.method public setClir(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 523
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidl;->fromClir(I)Lvendor/qti/hardware/radio/ims/ClirInfo;

    move-result-object p2

    .line 524
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lvendor/qti/hardware/radio/ims/IImsRadio;->setClir(ILvendor/qti/hardware/radio/ims/ClirInfo;)V

    return-void
.end method

.method public setColr(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 589
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidl;->fromColrValue(I)Lvendor/qti/hardware/radio/ims/ColrInfo;

    move-result-object p2

    .line 590
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lvendor/qti/hardware/radio/ims/IImsRadio;->setColr(ILvendor/qti/hardware/radio/ims/ColrInfo;)V

    return-void
.end method

.method public setConfig(IIZILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    .line 479
    invoke-static {p2, p3, p4, p5, p6}, Lorg/codeaurora/ims/StableAidl;->fromImsConfig(IZILjava/lang/String;I)Lvendor/qti/hardware/radio/ims/ConfigInfo;

    move-result-object p2

    .line 481
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lvendor/qti/hardware/radio/ims/IImsRadio;->setConfig(ILvendor/qti/hardware/radio/ims/ConfigInfo;)V

    return-void
.end method

.method public setGlassesFree3dVideoCapability(IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 661
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lvendor/qti/hardware/radio/ims/IImsRadio;->setGlassesFree3dVideoCapability(IZ)V

    return-void
.end method

.method public setMediaConfiguration(ILandroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 634
    invoke-static {p2, p3, p4}, Lorg/codeaurora/ims/StableAidl;->fromImsMediaConfig(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)Lvendor/qti/hardware/radio/ims/MediaConfig;

    move-result-object p2

    .line 635
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lvendor/qti/hardware/radio/ims/IImsRadio;->setMediaConfiguration(ILvendor/qti/hardware/radio/ims/MediaConfig;)V

    return-void
.end method

.method public setServiceStatus(ILjava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/CapabilityStatus;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 419
    invoke-static {p2, p3}, Lorg/codeaurora/ims/StableAidl;->fromServiceStatusInfoList(Ljava/util/List;I)[Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;

    move-result-object p2

    .line 421
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lvendor/qti/hardware/radio/ims/IImsRadio;->setServiceStatus(I[Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;)V

    return-void
.end method

.method public setSuppServiceNotification(IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 512
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object p0

    if-eqz p2, :cond_0

    const/4 p2, 0x2

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    :goto_0
    invoke-interface {p0, p1, p2}, Lvendor/qti/hardware/radio/ims/IImsRadio;->setSuppServiceNotification(II)V

    return-void
.end method

.method public setUiTtyMode(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 564
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidl;->fromTty(I)Lvendor/qti/hardware/radio/ims/TtyInfo;

    move-result-object p2

    .line 565
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lvendor/qti/hardware/radio/ims/IImsRadio;->setUiTtyMode(ILvendor/qti/hardware/radio/ims/TtyInfo;)V

    return-void
.end method

.method public startDtmf(IIC)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 500
    invoke-static {p2, p3}, Lorg/codeaurora/ims/StableAidl;->fromDtmf(IC)Lvendor/qti/hardware/radio/ims/DtmfInfo;

    move-result-object p2

    .line 501
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lvendor/qti/hardware/radio/ims/IImsRadio;->startDtmf(ILvendor/qti/hardware/radio/ims/DtmfInfo;)V

    return-void
.end method

.method public stopDtmf(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 506
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object p0

    invoke-interface {p0, p1}, Lvendor/qti/hardware/radio/ims/IImsRadio;->stopDtmf(I)V

    return-void
.end method

.method public suppServiceStatus(III[Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 577
    invoke-static/range {p2 .. p7}, Lorg/codeaurora/ims/StableAidl;->fromSuppServiceStatus(II[Ljava/lang/String;Ljava/lang/String;IZ)Lvendor/qti/hardware/radio/ims/SuppServiceStatusRequest;

    move-result-object p2

    .line 579
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lvendor/qti/hardware/radio/ims/IImsRadio;->suppServiceStatus(ILvendor/qti/hardware/radio/ims/SuppServiceStatusRequest;)V

    return-void
.end method
