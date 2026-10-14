.class public Lorg/codeaurora/ims/ImsPhoneStateListener;
.super Lcom/motorola/android/telephony/MotoExtPhoneStateListener;
.source "ImsPhoneStateListener.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPhoneId:I

.field private mTelephony:Lcom/motorola/android/telephony/MotoExtTelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1

    .line 34
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/motorola/android/telephony/MotoExtPhoneStateListener;-><init>(Ljava/lang/Integer;)V

    .line 35
    iput-object p1, p0, Lorg/codeaurora/ims/ImsPhoneStateListener;->mContext:Landroid/content/Context;

    .line 37
    new-instance p1, Lcom/motorola/android/telephony/MotoExtTelephonyManager;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsPhoneStateListener;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0, p2}, Lcom/motorola/android/telephony/MotoExtTelephonyManager;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsPhoneStateListener;->mTelephony:Lcom/motorola/android/telephony/MotoExtTelephonyManager;

    .line 38
    iput p3, p0, Lorg/codeaurora/ims/ImsPhoneStateListener;->mPhoneId:I

    return-void
.end method

.method private logd(Ljava/lang/String;)V
    .locals 2

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/codeaurora/ims/ImsPhoneStateListener;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getSubscriptionId()I
    .locals 0

    .line 52
    iget-object p0, p0, Lorg/codeaurora/ims/ImsPhoneStateListener;->mSubId:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public onOemHookRawEvent([B)V
    .locals 1

    .line 25
    const-string v0, "onOemHookRawEvent"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsPhoneStateListener;->logd(Ljava/lang/String;)V

    .line 26
    iget p0, p0, Lorg/codeaurora/ims/ImsPhoneStateListener;->mPhoneId:I

    invoke-static {p0}, Lorg/codeaurora/ims/ImsConfigImplOem;->getInstance(I)Lorg/codeaurora/ims/ImsConfigImplOem;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 28
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsConfigImplOem;->handleOemHookRawEvent([B)V

    :cond_0
    return-void
.end method

.method public register()V
    .locals 2

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "register, subId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/codeaurora/ims/ImsPhoneStateListener;->mSubId:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsPhoneStateListener;->logd(Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lorg/codeaurora/ims/ImsPhoneStateListener;->mTelephony:Lcom/motorola/android/telephony/MotoExtTelephonyManager;

    const v1, 0x8000

    invoke-virtual {v0, p0, v1}, Lcom/motorola/android/telephony/MotoExtTelephonyManager;->listen(Lcom/motorola/android/telephony/MotoExtPhoneStateListener;I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "ImsPhoneStateListener { "

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mSubId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/codeaurora/ims/ImsPhoneStateListener;->mSubId:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mPhoneId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lorg/codeaurora/ims/ImsPhoneStateListener;->mPhoneId:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 60
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " }"

    .line 61
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public unregister()V
    .locals 2

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unregister, subId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/codeaurora/ims/ImsPhoneStateListener;->mSubId:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsPhoneStateListener;->logd(Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lorg/codeaurora/ims/ImsPhoneStateListener;->mTelephony:Lcom/motorola/android/telephony/MotoExtTelephonyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/motorola/android/telephony/MotoExtTelephonyManager;->listen(Lcom/motorola/android/telephony/MotoExtPhoneStateListener;I)V

    return-void
.end method
