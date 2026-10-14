.class public final Lorg/codeaurora/ims/ImsRadioHalFactory;
.super Ljava/lang/Object;
.source "ImsRadioHalFactory.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ImsRadioHalFactory"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isAidlHalAvailable(Landroid/content/Context;)Z
    .locals 6

    const/4 v0, 0x6

    const/4 v1, 0x1

    .line 34
    invoke-static {v1, v0}, Lorg/codeaurora/ims/ImsRadioHalFactory;->makeRadioVersion(II)I

    move-result v0

    const/4 v2, 0x0

    .line 36
    const-string v3, "ImsRadioHalFactory"

    if-nez p0, :cond_0

    .line 37
    const-string p0, "Context is NULL"

    invoke-static {v3, p0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 40
    :cond_0
    const-class v4, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    if-nez p0, :cond_1

    .line 42
    const-string p0, "TelephonyManger is NULL"

    invoke-static {v3, p0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 45
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getRadioHalVersion()Landroid/util/Pair;

    move-result-object p0

    .line 46
    iget-object v4, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {v4, p0}, Lorg/codeaurora/ims/ImsRadioHalFactory;->makeRadioVersion(II)I

    move-result p0

    .line 48
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "isAidlHalAvailable: halVersion = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-lt p0, v0, :cond_2

    return v1

    :cond_2
    return v2
.end method

.method private static makeRadioVersion(II)I
    .locals 0

    if-ltz p0, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    mul-int/lit8 p0, p0, 0x64

    add-int/2addr p0, p1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final newImsRadioHal(Lorg/codeaurora/ims/IImsRadioResponse;Lorg/codeaurora/ims/IImsRadioIndication;ILandroid/content/Context;)Lorg/codeaurora/ims/IImsRadio;
    .locals 3

    .line 57
    const-string v0, "ro.board.api_level"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 58
    const-string v2, "ro.radio.noril"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "ImsRadioHalFactory"

    if-nez v1, :cond_1

    const/16 v1, 0x1f

    if-ge v0, v1, :cond_0

    if-nez v0, :cond_1

    .line 60
    invoke-static {p3}, Lorg/codeaurora/ims/ImsRadioHalFactory;->isAidlHalAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    :cond_0
    invoke-static {p2}, Lorg/codeaurora/ims/ImsRadioAidl;->isAidlAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    const-string v0, "Initializing IImsRadio AIDL"

    invoke-static {v2, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    new-instance v0, Lorg/codeaurora/ims/ImsRadioAidl;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/codeaurora/ims/ImsRadioAidl;-><init>(Lorg/codeaurora/ims/IImsRadioResponse;Lorg/codeaurora/ims/IImsRadioIndication;ILandroid/content/Context;)V

    return-object v0

    .line 65
    :cond_1
    const-string p0, "Initialize default HAL as either AIDL or ril target support  is not available"

    invoke-static {v2, p0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    new-instance p0, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;-><init>()V

    return-object p0
.end method
