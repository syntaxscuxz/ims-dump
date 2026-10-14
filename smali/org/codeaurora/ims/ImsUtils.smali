.class public Lorg/codeaurora/ims/ImsUtils;
.super Ljava/lang/Object;
.source "ImsUtils.java"


# static fields
.field public static final ACTION_UPDATE_IMS_SERVICE_CONFIG:Ljava/lang/String; = "com.motorola.android.ims.ACTION_UPDATE_IMS_SERVICE_CONFIG"

.field public static final EXTRA_FORCE:Ljava/lang/String; = "force"

.field private static final PROPERTY_DBG_ALLOW_IMS_OFF_OVERRIDE:Ljava/lang/String; = "persist.dbg.allow_ims_off"

.field private static final PROPERTY_DBG_ALLOW_IMS_OFF_OVERRIDE_DEFAULT:I = 0x0

.field private static final PROPERTY_DBG_VCE_AVAIL_OVERRIDE:Ljava/lang/String; = "persist.dbg.vce_avail_ovr"

.field private static final PROPERTY_DBG_VCE_AVAIL_OVERRIDE_DEFAULT:I = 0x0

.field private static final PROPERTY_DBG_VOLTE_AVAIL_OVERRIDE:Ljava/lang/String; = "persist.dbg.volte_avail_ovr"

.field private static final PROPERTY_DBG_VOLTE_AVAIL_OVERRIDE_DEFAULT:I = 0x0

.field private static final PROPERTY_DBG_VT_AVAIL_OVERRIDE:Ljava/lang/String; = "persist.dbg.vt_avail_ovr"

.field private static final PROPERTY_DBG_VT_AVAIL_OVERRIDE_DEFAULT:I = 0x0

.field private static final PROPERTY_DBG_WFC_AVAIL_OVERRIDE:Ljava/lang/String; = "persist.dbg.wfc_avail_ovr"

.field private static final PROPERTY_DBG_WFC_AVAIL_OVERRIDE_DEFAULT:I = 0x0

.field public static final SIP_FORBIDDEN:I = 0x193

.field public static final SIP_REQUEST_TIMEOUT:I = 0x198

.field public static final SIP_SERVER_BAD_GATEWAY:I = 0x1f6

.field public static final SIP_SERVER_INTERNAL_ERROR:I = 0x1f4

.field public static final SIP_SERVER_MESSAGE_TOOLARGE:I = 0x201

.field public static final SIP_SERVER_NOT_IMPLEMENTED:I = 0x1f5

.field public static final SIP_SERVER_PRECONDITION_FAILURE:I = 0x244

.field public static final SIP_SERVER_VERSION_UNSUPPORTED:I = 0x1f9

.field public static final SIP_SERVICE_UNAVAILABLE:I = 0x1f7

.field public static final SIP_TEMPORARILY_UNAVAILABLE:I = 0x1e0

.field public static final SIP_UNKNOWN:I = 0x0

.field private static final SUB_PROPERTY_NOT_INITIALIZED:I = -0x1

.field private static SYSTEM_PROPERTY_NOT_SET:I = -0x1

.field public static final VOICE_INFO_SILENT:I = 0x0

.field public static final VOICE_INFO_SPEECH:I = 0x1

.field public static final VOICE_INFO_UNKNOWN:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getActiveSubIdForPhoneId(Landroid/content/Context;I)I
    .locals 0

    .line 321
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 324
    invoke-virtual {p0, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 326
    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public static getBooleanCarrierConfig(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 2

    .line 301
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object p1

    if-eqz p1, :cond_0

    .line 302
    array-length v0, p1

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    .line 303
    aget p1, p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 307
    :goto_0
    const-string v0, "carrier_config"

    .line 308
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/CarrierConfigManager;

    if-eqz p0, :cond_1

    .line 310
    invoke-virtual {p0, p1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    if-nez p0, :cond_2

    .line 313
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object p0

    .line 315
    :cond_2
    invoke-virtual {p0, p2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static getBooleanDeviceConfig(Landroid/content/Context;II)Z
    .locals 4

    .line 291
    invoke-static {p0, p1}, Lorg/codeaurora/ims/ImsUtils;->getActiveSubIdForPhoneId(Landroid/content/Context;I)I

    move-result v0

    .line 292
    invoke-static {p0, v0}, Landroid/telephony/SubscriptionManager;->getResourcesForSubId(Landroid/content/Context;I)Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 293
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getBooleanDeviceConfig: phoneId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", subId="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", resId="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", value="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 293
    const-class p1, Lorg/codeaurora/ims/ImsUtils;

    invoke-static {p1, p0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return v1
.end method

.method private static getIntArrayCarrierConfig(Landroid/content/Context;ILjava/lang/String;)[I
    .locals 2

    .line 182
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object p1

    if-eqz p1, :cond_0

    .line 183
    array-length v0, p1

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    .line 184
    aget p1, p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 188
    :goto_0
    const-string v0, "carrier_config"

    .line 189
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/CarrierConfigManager;

    if-eqz p0, :cond_1

    .line 192
    invoke-virtual {p0, p1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    if-eqz p0, :cond_2

    .line 195
    invoke-virtual {p0, p2}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object p0

    return-object p0

    .line 198
    :cond_2
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object p0

    return-object p0
.end method

.method public static isEnhanced4gLteModeSettingEnabledByUser(Landroid/content/Context;I)Z
    .locals 4

    .line 254
    invoke-static {p0, p1}, Lorg/codeaurora/ims/ImsUtils;->getActiveSubIdForPhoneId(Landroid/content/Context;I)I

    move-result v0

    .line 255
    const-string v1, "volte_vt_enabled"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2, p0}, Landroid/telephony/SubscriptionManager;->getIntegerSubscriptionProperty(ILjava/lang/String;ILandroid/content/Context;)I

    move-result v0

    .line 258
    const-string v1, "enhanced_4g_lte_on_by_default_bool"

    invoke-static {p0, p1, v1}, Lorg/codeaurora/ims/ImsUtils;->getBooleanCarrierConfig(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v1

    .line 263
    const-string v3, "editable_enhanced_4g_lte_bool"

    invoke-static {p0, p1, v3}, Lorg/codeaurora/ims/ImsUtils;->getBooleanCarrierConfig(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "hide_enhanced_4g_lte_bool"

    .line 264
    invoke-static {p0, p1, v3}, Lorg/codeaurora/ims/ImsUtils;->getBooleanCarrierConfig(Landroid/content/Context;ILjava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    if-ne v0, p0, :cond_1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method private static isGbaValid(Landroid/content/Context;I)Z
    .locals 3

    .line 111
    const-string v0, "carrier_ims_gba_required_bool"

    invoke-static {p0, p1, v0}, Lorg/codeaurora/ims/ImsUtils;->getBooleanCarrierConfig(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 113
    invoke-static {p0, p1}, Lorg/codeaurora/ims/ImsUtils;->getActiveSubIdForPhoneId(Landroid/content/Context;I)I

    move-result p1

    .line 114
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p0

    .line 115
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getIsimIst()Ljava/lang/String;

    move-result-object p0

    .line 116
    const-class p1, Lorg/codeaurora/ims/ImsUtils;

    if-nez p0, :cond_0

    .line 117
    const-string p0, "isGbaValid - ISF is NULL"

    invoke-static {p1, p0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return v1

    :cond_0
    if-eqz p0, :cond_1

    .line 120
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_1

    .line 121
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    int-to-byte v0, v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 122
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "isGbaValid - GBA capable="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", ISF="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    return v1
.end method

.method public static isImsOverNrEnabledByPlatform(Landroid/content/Context;I)Z
    .locals 3

    .line 161
    const-string v0, "carrier_nr_availabilities_int_array"

    invoke-static {p0, p1, v0}, Lorg/codeaurora/ims/ImsUtils;->getIntArrayCarrierConfig(Landroid/content/Context;ILjava/lang/String;)[I

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 164
    :cond_0
    invoke-static {v0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v2, Lorg/codeaurora/ims/ImsUtils$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lorg/codeaurora/ims/ImsUtils$$ExternalSyntheticLambda0;-><init>()V

    .line 165
    invoke-interface {v0, v2}, Ljava/util/stream/IntStream;->anyMatch(Ljava/util/function/IntPredicate;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 167
    :cond_1
    invoke-static {p0, p1}, Lorg/codeaurora/ims/ImsUtils;->isGbaValid(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 168
    invoke-static {p0, p1}, Lorg/codeaurora/ims/ImsUtils;->isIsimValid(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 169
    invoke-static {p0, p1}, Lorg/codeaurora/ims/ImsUtils;->isIstValid(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "vonr_enabled_bool"

    .line 170
    invoke-static {p0, p1, v0}, Lorg/codeaurora/ims/ImsUtils;->getBooleanCarrierConfig(Landroid/content/Context;ILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method private static isIsimValid(Landroid/content/Context;I)Z
    .locals 2

    .line 207
    const-string v0, "carrier_ims_isim_required_bool"

    invoke-static {p0, p1, v0}, Lorg/codeaurora/ims/ImsUtils;->getBooleanCarrierConfig(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 209
    invoke-static {p0, p1}, Lorg/codeaurora/ims/ImsUtils;->getActiveSubIdForPhoneId(Landroid/content/Context;I)I

    move-result p1

    .line 210
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p0

    const/4 p1, 0x5

    .line 211
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->getAidForAppType(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 212
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "isIsimValid - ISIM valid ="

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-class p1, Lorg/codeaurora/ims/ImsUtils;

    invoke-static {p1, p0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    return v1
.end method

.method private static isIstValid(Landroid/content/Context;I)Z
    .locals 2

    .line 224
    const-string v0, "carrier_moto_ims_ist_required_bool"

    invoke-static {p0, p1, v0}, Lorg/codeaurora/ims/ImsUtils;->getBooleanCarrierConfig(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 226
    invoke-static {p0, p1}, Lorg/codeaurora/ims/ImsUtils;->getActiveSubIdForPhoneId(Landroid/content/Context;I)I

    move-result p1

    .line 227
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p0

    .line 228
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getIsimIst()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 230
    const-string p1, "000000"

    .line 231
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "010000"

    .line 232
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 233
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "isIstValid - EF IST = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", IST valid ="

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-class p1, Lorg/codeaurora/ims/ImsUtils;

    invoke-static {p1, p0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    return v1
.end method

.method public static isVceEnabledByPlatform(Landroid/content/Context;I)Z
    .locals 3

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "persist.dbg.vce_avail_ovr"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 146
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v2, Lorg/codeaurora/ims/ImsUtils;->SYSTEM_PROPERTY_NOT_SET:I

    .line 145
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    sget v0, Lorg/codeaurora/ims/ImsUtils;->SYSTEM_PROPERTY_NOT_SET:I

    .line 148
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x1110169

    .line 153
    invoke-static {p0, p1, v0}, Lorg/codeaurora/ims/ImsUtils;->getBooleanDeviceConfig(Landroid/content/Context;II)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "carrier_allow_vce_bool"

    .line 155
    invoke-static {p0, p1, v0}, Lorg/codeaurora/ims/ImsUtils;->getBooleanCarrierConfig(Landroid/content/Context;ILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v2

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    return v2
.end method

.method public static isVolteEnabledByPlatform(Landroid/content/Context;I)Z
    .locals 3

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "persist.dbg.volte_avail_ovr"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v2, Lorg/codeaurora/ims/ImsUtils;->SYSTEM_PROPERTY_NOT_SET:I

    .line 96
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    sget v0, Lorg/codeaurora/ims/ImsUtils;->SYSTEM_PROPERTY_NOT_SET:I

    .line 99
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x111016a

    .line 104
    invoke-static {p0, p1, v0}, Lorg/codeaurora/ims/ImsUtils;->getBooleanDeviceConfig(Landroid/content/Context;II)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "carrier_volte_available_bool"

    .line 106
    invoke-static {p0, p1, v0}, Lorg/codeaurora/ims/ImsUtils;->getBooleanCarrierConfig(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    invoke-static {p0, p1}, Lorg/codeaurora/ims/ImsUtils;->isGbaValid(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_1

    return v2

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    return v2
.end method

.method public static isVonrEnabledByUser(Landroid/content/Context;I)Z
    .locals 3

    .line 275
    invoke-static {p0, p1}, Lorg/codeaurora/ims/ImsUtils;->getActiveSubIdForPhoneId(Landroid/content/Context;I)I

    move-result v0

    .line 276
    const-string v1, "nr_advanced_calling_enabled"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2, p0}, Landroid/telephony/SubscriptionManager;->getIntegerSubscriptionProperty(ILjava/lang/String;ILandroid/content/Context;)I

    move-result v0

    .line 279
    const-string v1, "vonr_on_by_default_bool"

    invoke-static {p0, p1, v1}, Lorg/codeaurora/ims/ImsUtils;->getBooleanCarrierConfig(Landroid/content/Context;ILjava/lang/String;)Z

    move-result p0

    .line 281
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "isVonrEnabledByUser, onByDefault: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", setting: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-class v1, Lorg/codeaurora/ims/ImsUtils;

    invoke-static {v1, p1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-ne v0, v2, :cond_0

    return p0

    :cond_0
    const/4 p0, 0x1

    if-ne v0, p0, :cond_1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static isWfcEnabledByPlatform(Landroid/content/Context;I)Z
    .locals 3

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "persist.dbg.wfc_avail_ovr"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 131
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v2, Lorg/codeaurora/ims/ImsUtils;->SYSTEM_PROPERTY_NOT_SET:I

    .line 130
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    sget v0, Lorg/codeaurora/ims/ImsUtils;->SYSTEM_PROPERTY_NOT_SET:I

    .line 132
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x111016d

    .line 137
    invoke-static {p0, p1, v0}, Lorg/codeaurora/ims/ImsUtils;->getBooleanDeviceConfig(Landroid/content/Context;II)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "carrier_wfc_ims_available_bool"

    .line 139
    invoke-static {p0, p1, v0}, Lorg/codeaurora/ims/ImsUtils;->getBooleanCarrierConfig(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    invoke-static {p0, p1}, Lorg/codeaurora/ims/ImsUtils;->isGbaValid(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_1

    return v2

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    return v2
.end method

.method static synthetic lambda$isImsOverNrEnabledByPlatform$0(I)Z
    .locals 1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static sendUpdateImsServiceConfigRequest(Landroid/content/Context;IZ)V
    .locals 2

    .line 351
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.motorola.android.ims.ACTION_UPDATE_IMS_SERVICE_CONFIG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x1000000

    .line 352
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 353
    const-string v1, "force"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 354
    invoke-static {v0, p1}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 355
    const-string p1, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method public static toByteArray(Ljava/util/ArrayList;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)[B"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 71
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 74
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static toByteArrayList([B)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 85
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 86
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-byte v3, p0, v2

    .line 87
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method
