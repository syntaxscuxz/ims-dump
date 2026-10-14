.class public Lorg/codeaurora/ims/ImsConfigImpl;
.super Landroid/telephony/ims/stub/ImsConfigImplBase;
.source "ImsConfigImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/ims/ImsConfigImpl$ImsConfigImplHandler;,
        Lorg/codeaurora/ims/ImsConfigImpl$ImsConfigImplRequestHandler;,
        Lorg/codeaurora/ims/ImsConfigImpl$SetCapabilityValueListener;,
        Lorg/codeaurora/ims/ImsConfigImpl$SetCapabilityFailCause;
    }
.end annotation


# static fields
.field private static final ACTION_TRY_WFC_CONNECTION:Ljava/lang/String; = "com.google.android.wfcactivation.TRY_WFC_CONNECTION"

.field private static final DEFAULT_WFC_MDN:Ljava/lang/String; = "0"

.field private static final EVENT_ACCESS_PROVISIONED_VAL:I = 0x1

.field private static final EVENT_ACCESS_PROVISIONED_VAL_ASYNC:I = 0x64

.field private static final EVENT_SET_FEATURE_VALUE:I = 0x2


# instance fields
.field private final MODIFY_PHONE_STATE:Ljava/lang/String;

.field private final READ_PHONE_STATE:Ljava/lang/String;

.field private final READ_PRIVILEGED_PHONE_STATE:Ljava/lang/String;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCi:Lorg/codeaurora/ims/ImsSenderRxr;

.field private mConfigOem:Lorg/codeaurora/ims/ImsConfigImplOem;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mImsMmTelManager:Landroid/telephony/ims/ImsMmTelManager;

.field private mIsCarrierConfigLoaded:Z

.field private mIsContentObserversRegistered:Z

.field private mIsSsacVoiceBarred:Z

.field private mIsVopsEnabled:Z

.field private final mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mRequestHandler:Landroid/os/Handler;

.field private mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

.field private mSubId:I

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mUserSetting:Ljava/lang/Integer;

.field private mVoLTEEnabledObserver:Landroid/database/ContentObserver;

.field private mVoWiFiModeObserver:Landroid/database/ContentObserver;

.field private mVoWiFiRoamingModeObserver:Landroid/database/ContentObserver;

.field private mVolteProvisionFlag:I

.field private mVonrEnabledObserver:Landroid/database/ContentObserver;

.field private mWfcModeUri:Landroid/net/Uri;

.field private mWfcRoamingModeUri:Landroid/net/Uri;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCi(Lorg/codeaurora/ims/ImsConfigImpl;)Lorg/codeaurora/ims/ImsSenderRxr;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lorg/codeaurora/ims/ImsConfigImpl;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmImsMmTelManager(Lorg/codeaurora/ims/ImsConfigImpl;)Landroid/telephony/ims/ImsMmTelManager;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mImsMmTelManager:Landroid/telephony/ims/ImsMmTelManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsCarrierConfigLoaded(Lorg/codeaurora/ims/ImsConfigImpl;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mIsCarrierConfigLoaded:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsSsacVoiceBarred(Lorg/codeaurora/ims/ImsConfigImpl;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mIsSsacVoiceBarred:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsVopsEnabled(Lorg/codeaurora/ims/ImsConfigImpl;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mIsVopsEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPhoneStateListener(Lorg/codeaurora/ims/ImsConfigImpl;)Landroid/telephony/PhoneStateListener;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmServiceSub(Lorg/codeaurora/ims/ImsConfigImpl;)Lorg/codeaurora/ims/ImsServiceSub;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSubId(Lorg/codeaurora/ims/ImsConfigImpl;)I
    .locals 0

    iget p0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mSubId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSubscriptionManager(Lorg/codeaurora/ims/ImsConfigImpl;)Landroid/telephony/SubscriptionManager;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTelephonyManager(Lorg/codeaurora/ims/ImsConfigImpl;)Landroid/telephony/TelephonyManager;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUserSetting(Lorg/codeaurora/ims/ImsConfigImpl;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mUserSetting:Ljava/lang/Integer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVoLTEEnabledObserver(Lorg/codeaurora/ims/ImsConfigImpl;)Landroid/database/ContentObserver;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mVoLTEEnabledObserver:Landroid/database/ContentObserver;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVoWiFiModeObserver(Lorg/codeaurora/ims/ImsConfigImpl;)Landroid/database/ContentObserver;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mVoWiFiModeObserver:Landroid/database/ContentObserver;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVoWiFiRoamingModeObserver(Lorg/codeaurora/ims/ImsConfigImpl;)Landroid/database/ContentObserver;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mVoWiFiRoamingModeObserver:Landroid/database/ContentObserver;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVolteProvisionFlag(Lorg/codeaurora/ims/ImsConfigImpl;)I
    .locals 0

    iget p0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mVolteProvisionFlag:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmVonrEnabledObserver(Lorg/codeaurora/ims/ImsConfigImpl;)Landroid/database/ContentObserver;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mVonrEnabledObserver:Landroid/database/ContentObserver;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWfcModeUri(Lorg/codeaurora/ims/ImsConfigImpl;)Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mWfcModeUri:Landroid/net/Uri;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWfcRoamingModeUri(Lorg/codeaurora/ims/ImsConfigImpl;)Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mWfcRoamingModeUri:Landroid/net/Uri;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmImsMmTelManager(Lorg/codeaurora/ims/ImsConfigImpl;Landroid/telephony/ims/ImsMmTelManager;)V
    .locals 0

    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mImsMmTelManager:Landroid/telephony/ims/ImsMmTelManager;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsCarrierConfigLoaded(Lorg/codeaurora/ims/ImsConfigImpl;Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mIsCarrierConfigLoaded:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsContentObserversRegistered(Lorg/codeaurora/ims/ImsConfigImpl;Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mIsContentObserversRegistered:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsSsacVoiceBarred(Lorg/codeaurora/ims/ImsConfigImpl;Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mIsSsacVoiceBarred:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsVopsEnabled(Lorg/codeaurora/ims/ImsConfigImpl;Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mIsVopsEnabled:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSubId(Lorg/codeaurora/ims/ImsConfigImpl;I)V
    .locals 0

    iput p1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mSubId:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTelephonyManager(Lorg/codeaurora/ims/ImsConfigImpl;Landroid/telephony/TelephonyManager;)V
    .locals 0

    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmVolteProvisionFlag(Lorg/codeaurora/ims/ImsConfigImpl;I)V
    .locals 0

    iput p1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mVolteProvisionFlag:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmWfcModeUri(Lorg/codeaurora/ims/ImsConfigImpl;Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mWfcModeUri:Landroid/net/Uri;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmWfcRoamingModeUri(Lorg/codeaurora/ims/ImsConfigImpl;Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mWfcRoamingModeUri:Landroid/net/Uri;

    return-void
.end method

.method static bridge synthetic -$$Nest$madjustAndSyncVoWiFiMode(Lorg/codeaurora/ims/ImsConfigImpl;Landroid/telephony/ServiceState;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsConfigImpl;->adjustAndSyncVoWiFiMode(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$madjustVoWiFiMode(Lorg/codeaurora/ims/ImsConfigImpl;I)I
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsConfigImpl;->adjustVoWiFiMode(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mclearSubscriptionCache(Lorg/codeaurora/ims/ImsConfigImpl;)V
    .locals 0

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->clearSubscriptionCache()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetOperationStatus(Lorg/codeaurora/ims/ImsConfigImpl;Ljava/lang/Object;Ljava/lang/Throwable;)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsConfigImpl;->getOperationStatus(Ljava/lang/Object;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetPhoneId(Lorg/codeaurora/ims/ImsConfigImpl;)I
    .locals 0

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->getPhoneId()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetWfcMDN(Lorg/codeaurora/ims/ImsConfigImpl;I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsConfigImpl;->getWfcMDN(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mlogImsConfigChangedCheckin(Lorg/codeaurora/ims/ImsConfigImpl;ILjava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/codeaurora/ims/ImsConfigImpl;->logImsConfigChangedCheckin(ILjava/lang/String;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monAccessProvisionedValDone(Lorg/codeaurora/ims/ImsConfigImpl;Lorg/codeaurora/telephony/utils/AsyncResult;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsConfigImpl;->onAccessProvisionedValDone(Lorg/codeaurora/telephony/utils/AsyncResult;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monSetFeatureResponseDone(Lorg/codeaurora/ims/ImsConfigImpl;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsConfigImpl;->onSetFeatureResponseDone(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetVoiceDomainSetting(Lorg/codeaurora/ims/ImsConfigImpl;)V
    .locals 0

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->setVoiceDomainSetting()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msyncWfcMDN(Lorg/codeaurora/ims/ImsConfigImpl;)V
    .locals 0

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->syncWfcMDN()V

    return-void
.end method

.method public constructor <init>(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/ims/ImsSenderRxr;Landroid/content/Context;)V
    .locals 4

    .line 233
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsConfigImpl$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {p0, v0}, Landroid/telephony/ims/stub/ImsConfigImplBase;-><init>(Ljava/util/concurrent/Executor;)V

    const/4 v0, -0x1

    .line 68
    iput v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mSubId:I

    const/4 v0, 0x0

    .line 69
    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 72
    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mImsMmTelManager:Landroid/telephony/ims/ImsMmTelManager;

    .line 73
    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v0, 0x0

    .line 74
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mIsContentObserversRegistered:Z

    .line 75
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mIsCarrierConfigLoaded:Z

    .line 82
    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    iput-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->MODIFY_PHONE_STATE:Ljava/lang/String;

    .line 83
    const-string v1, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    iput-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->READ_PRIVILEGED_PHONE_STATE:Ljava/lang/String;

    .line 85
    const-string v1, "android.permission.READ_PHONE_STATE"

    iput-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->READ_PHONE_STATE:Ljava/lang/String;

    const/4 v1, 0x1

    .line 91
    iput-boolean v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mIsVopsEnabled:Z

    .line 92
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mIsSsacVoiceBarred:Z

    .line 95
    new-instance v1, Lorg/codeaurora/ims/ImsConfigImpl$1;

    new-instance v2, Landroid/os/Handler;

    .line 96
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v1, p0, v2}, Lorg/codeaurora/ims/ImsConfigImpl$1;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;Landroid/os/Handler;)V

    iput-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mVoWiFiModeObserver:Landroid/database/ContentObserver;

    .line 102
    new-instance v1, Lorg/codeaurora/ims/ImsConfigImpl$2;

    new-instance v2, Landroid/os/Handler;

    .line 103
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v1, p0, v2}, Lorg/codeaurora/ims/ImsConfigImpl$2;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;Landroid/os/Handler;)V

    iput-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mVoWiFiRoamingModeObserver:Landroid/database/ContentObserver;

    .line 111
    new-instance v1, Lorg/codeaurora/ims/ImsConfigImpl$3;

    new-instance v2, Landroid/os/Handler;

    .line 112
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v1, p0, v2}, Lorg/codeaurora/ims/ImsConfigImpl$3;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;Landroid/os/Handler;)V

    iput-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mVoLTEEnabledObserver:Landroid/database/ContentObserver;

    .line 123
    new-instance v1, Lorg/codeaurora/ims/ImsConfigImpl$4;

    new-instance v2, Landroid/os/Handler;

    .line 124
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v1, p0, v2}, Lorg/codeaurora/ims/ImsConfigImpl$4;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;Landroid/os/Handler;)V

    iput-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mVonrEnabledObserver:Landroid/database/ContentObserver;

    .line 134
    new-instance v1, Lorg/codeaurora/ims/ImsConfigImpl$5;

    invoke-direct {v1, p0}, Lorg/codeaurora/ims/ImsConfigImpl$5;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    iput-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 288
    new-instance v1, Lorg/codeaurora/ims/ImsConfigImpl$6;

    invoke-direct {v1, p0}, Lorg/codeaurora/ims/ImsConfigImpl$6;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    iput-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 949
    iput v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mVolteProvisionFlag:I

    .line 950
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mUserSetting:Ljava/lang/Integer;

    .line 1077
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$10;

    .line 1078
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lorg/codeaurora/ims/ImsConfigImpl$10;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 234
    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    .line 235
    iput-object p2, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 236
    iput-object p3, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    .line 237
    new-instance p1, Lorg/codeaurora/ims/ImsConfigImpl$ImsConfigImplHandler;

    iget-object p2, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lorg/codeaurora/ims/ImsConfigImpl$ImsConfigImplHandler;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;Landroid/os/Looper;)V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mHandler:Landroid/os/Handler;

    .line 238
    iget-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    iget-object p2, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->getPhoneId()I

    move-result p3

    invoke-static {p1, p2, p3}, Lorg/codeaurora/ims/ImsConfigImplOem;->getInstance(Lorg/codeaurora/ims/ImsServiceSub;Landroid/content/Context;I)Lorg/codeaurora/ims/ImsConfigImplOem;

    move-result-object p1

    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mConfigOem:Lorg/codeaurora/ims/ImsConfigImplOem;

    .line 240
    iget-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    const-string p2, "telephony_subscription_service"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/SubscriptionManager;

    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    if-eqz p1, :cond_0

    .line 243
    invoke-virtual {p1}, Landroid/telephony/SubscriptionManager;->createForAllUserProfiles()Landroid/telephony/SubscriptionManager;

    move-result-object p1

    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 244
    invoke-virtual {p1, v1}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    goto :goto_0

    .line 246
    :cond_0
    const-string p1, "unable to listen for subscription changed due to subscriptionManager is null"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 249
    :goto_0
    new-instance p1, Landroid/content/IntentFilter;

    const-string p2, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-direct {p1, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 251
    const-string p2, "org.codeaurora.intent.action.ESSENTIAL_RECORDS_LOADED"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 252
    const-string p2, "com.google.android.wfcactivation.TRY_WFC_CONNECTION"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 253
    const-string p2, "com.motorola.android.ims.ACTION_UPDATE_IMS_SERVICE_CONFIG"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 254
    const-string p2, "org.codeaurora.VOIP_VOPS_SSAC_STATUS"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 255
    iget-object p2, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    iget-object p3, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const/4 v0, 0x2

    invoke-virtual {p2, p3, p1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 257
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "ImsConfigImplRequestHandler"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 258
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 259
    new-instance p2, Lorg/codeaurora/ims/ImsConfigImpl$ImsConfigImplRequestHandler;

    .line 260
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ImsConfigImplRequestHandler;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;Landroid/os/Looper;)V

    iput-object p2, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mRequestHandler:Landroid/os/Handler;

    return-void
.end method

.method private adjustAndSyncVoWiFiMode(Landroid/telephony/ServiceState;)V
    .locals 2

    .line 1088
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->shouldAdjustVoWiFiMode()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1092
    :cond_0
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-eqz v0, :cond_2

    .line 1093
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRegistrationState()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 1096
    :cond_1
    const-string p1, "OUT_OF_SERVICE, ignore WFC mode change"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 1101
    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v0

    if-nez v0, :cond_3

    .line 1102
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v0

    const/16 v1, 0x12

    if-ne v0, v1, :cond_3

    .line 1104
    const-string p1, "IWLAN only, ignore WFC mode change"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 1108
    :cond_3
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$11;

    invoke-direct {v0, p0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$11;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;Landroid/telephony/ServiceState;)V

    .line 1137
    iget-object p0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mRequestHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private adjustVoWiFiMode(I)I
    .locals 6

    const/16 v0, 0xa

    .line 1148
    const-string v1, "SubID "

    if-ne p1, v0, :cond_5

    .line 1155
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType()I

    move-result v0

    .line 1156
    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result v2

    const/4 v3, 0x1

    const/16 v4, 0xd

    if-eq v0, v4, :cond_0

    const/16 v5, 0x13

    if-eq v0, v5, :cond_0

    if-eq v2, v4, :cond_0

    if-ne v2, v5, :cond_1

    .line 1159
    :cond_0
    iget-boolean v4, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mIsVopsEnabled:Z

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mIsSsacVoiceBarred:Z

    if-nez v4, :cond_1

    iget-object v4, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    .line 1166
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->getPhoneId()I

    move-result v5

    invoke-static {v4, v5}, Lorg/codeaurora/ims/ImsUtils;->isVolteEnabledByPlatform(Landroid/content/Context;I)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    .line 1168
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->getPhoneId()I

    move-result v5

    invoke-static {v4, v5}, Lorg/codeaurora/ims/ImsUtils;->isEnhanced4gLteModeSettingEnabledByUser(Landroid/content/Context;I)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    const/16 v4, 0x14

    if-eq v0, v4, :cond_2

    const/16 v5, 0x1e

    if-eq v0, v5, :cond_2

    if-eq v2, v4, :cond_2

    if-ne v2, v5, :cond_3

    .line 1172
    :cond_2
    iget-boolean v2, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mIsVopsEnabled:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mIsSsacVoiceBarred:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    .line 1178
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->getPhoneId()I

    move-result v4

    invoke-static {v2, v4}, Lorg/codeaurora/ims/ImsUtils;->isImsOverNrEnabledByPlatform(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    .line 1179
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->getPhoneId()I

    move-result v4

    invoke-static {v2, v4}, Lorg/codeaurora/ims/ImsUtils;->isVonrEnabledByUser(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    .line 1183
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->isWifiConnected()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v3, 0x2

    goto :goto_0

    :cond_4
    const/4 v3, -0x1

    .line 1186
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mSubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": WFC mode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", adjMode = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    return v3

    .line 1150
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mSubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": User didn\'t select IMS Preferred mode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return p1
.end method

.method private clearSubscriptionCache()V
    .locals 3

    const/4 v0, 0x0

    .line 353
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mIsCarrierConfigLoaded:Z

    const/4 v1, -0x1

    .line 354
    iput v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mSubId:I

    .line 355
    iget-boolean v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mIsContentObserversRegistered:Z

    if-eqz v1, :cond_0

    .line 356
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mVoWiFiModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 358
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mVoWiFiRoamingModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 362
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mVoLTEEnabledObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 367
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mVonrEnabledObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 371
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mIsContentObserversRegistered:Z

    :cond_0
    const/4 v1, 0x0

    .line 373
    iput-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mImsMmTelManager:Landroid/telephony/ims/ImsMmTelManager;

    .line 374
    iput-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mWfcModeUri:Landroid/net/Uri;

    .line 375
    iput-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mWfcRoamingModeUri:Landroid/net/Uri;

    .line 378
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_1

    .line 379
    iget-object p0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v1, p0, v0}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_1
    return-void
.end method

.method private enforceReadPhoneState(Ljava/lang/String;)V
    .locals 2

    .line 570
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    .line 572
    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 574
    iget-object p0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, p1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private getDomainName()Ljava/lang/String;
    .locals 1

    .line 671
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iget p0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mSubId:I

    invoke-virtual {v0, p0}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 673
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getIsimDomain()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 675
    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method private getOperationStatus(Ljava/lang/Object;Ljava/lang/Throwable;)I
    .locals 2

    .line 550
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getOperationStatus: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    if-eqz p1, :cond_3

    .line 554
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    instance-of v0, p2, Lorg/codeaurora/ims/ImsRilException;

    if-nez v0, :cond_1

    goto :goto_0

    .line 558
    :cond_1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_2

    return p0

    .line 562
    :cond_2
    check-cast p2, Lorg/codeaurora/ims/ImsRilException;

    .line 563
    invoke-virtual {p2}, Lorg/codeaurora/ims/ImsRilException;->getCode()I

    move-result p1

    const/4 p2, 0x6

    if-ne p1, p2, :cond_3

    const/4 p0, 0x2

    :cond_3
    :goto_0
    return p0
.end method

.method private getPhoneId()I
    .locals 0

    .line 900
    iget-object p0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsServiceSub;->getPhoneId()I

    move-result p0

    return p0
.end method

.method private declared-synchronized getUserSetting()Z
    .locals 2

    monitor-enter p0

    .line 1048
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mImsMmTelManager:Landroid/telephony/ims/ImsMmTelManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1049
    const-string v0, "checkinVolteProvision: mImsMmTelManager null"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1050
    monitor-exit p0

    return v1

    .line 1059
    :cond_0
    :try_start_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mUserSetting:Ljava/lang/Integer;

    .line 1060
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mImsMmTelManager:Landroid/telephony/ims/ImsMmTelManager;

    invoke-virtual {v0}, Landroid/telephony/ims/ImsMmTelManager;->isAdvancedCallingSettingEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 1061
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mUserSetting:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    or-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mUserSetting:Ljava/lang/Integer;

    .line 1063
    :cond_1
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mImsMmTelManager:Landroid/telephony/ims/ImsMmTelManager;

    invoke-virtual {v0}, Landroid/telephony/ims/ImsMmTelManager;->isVoWiFiSettingEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1064
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mUserSetting:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    or-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mUserSetting:Ljava/lang/Integer;

    .line 1066
    :cond_2
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mUserSetting:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_3

    .line 1067
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mImsMmTelManager:Landroid/telephony/ims/ImsMmTelManager;

    invoke-virtual {v0}, Landroid/telephony/ims/ImsMmTelManager;->isVtSettingEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1068
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mUserSetting:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    or-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mUserSetting:Ljava/lang/Integer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1072
    :cond_3
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private getWfcMDN(I)Ljava/lang/String;
    .locals 2

    .line 849
    const-string p0, "0"

    return-object p0
.end method

.method private isWifiConnected()Z
    .locals 1

    .line 1191
    iget-object p0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 1193
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0

    .line 1194
    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p0

    if-eqz p0, :cond_0

    const/16 v0, 0xc

    .line 1195
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1197
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private logImsConfigChangedCheckin(ILjava/lang/String;I)V
    .locals 1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_4

    const/16 v0, 0xb

    if-eq p1, v0, :cond_3

    const/16 v0, 0x19

    if-eq p1, v0, :cond_2

    const/16 v0, 0x1c

    if-eq p1, v0, :cond_1

    const/16 v0, 0x41

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 922
    :cond_0
    const-string p1, "vice_dm"

    goto :goto_0

    .line 919
    :cond_1
    const-string p1, "wfc_dm"

    goto :goto_0

    .line 916
    :cond_2
    const-string p1, "eab_dm"

    goto :goto_0

    .line 913
    :cond_3
    const-string p1, "vt_dm"

    goto :goto_0

    .line 910
    :cond_4
    const-string p1, "vlt_dm"

    :goto_0
    if-eqz p1, :cond_7

    .line 926
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    .line 930
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 931
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 932
    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 933
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_6

    .line 935
    const-string p1, ", ret: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 936
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_6
    const/4 p1, 0x1

    .line 939
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 938
    invoke-virtual {p0, p1, p2}, Lorg/codeaurora/ims/ImsConfigImpl;->checkinVolteProvision(ILjava/lang/String;)V

    :cond_7
    :goto_1
    return-void
.end method

.method private onAccessProvisionedValDone(Lorg/codeaurora/telephony/utils/AsyncResult;I)V
    .locals 2

    .line 493
    iget-object p2, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p2, Lorg/codeaurora/telephony/utils/SomeArgs;

    .line 494
    iget-object v0, p2, Lorg/codeaurora/telephony/utils/SomeArgs;->arg1:Ljava/lang/Object;

    iget-object v1, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {p0, v0, v1}, Lorg/codeaurora/ims/ImsConfigImpl;->getOperationStatus(Ljava/lang/Object;Ljava/lang/Throwable;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p2, Lorg/codeaurora/telephony/utils/SomeArgs;->arg2:Ljava/lang/Object;

    .line 495
    iget-object p1, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    iput-object p1, p2, Lorg/codeaurora/telephony/utils/SomeArgs;->arg3:Ljava/lang/Object;

    .line 496
    monitor-enter p2

    .line 497
    :try_start_0
    const-string p1, "Notifyall"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 498
    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    .line 499
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private onSetFeatureResponseDone(Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 8

    if-nez p1, :cond_0

    .line 504
    const-string p1, "onSetFeatureResponseDone :: AsyncResult is null."

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 512
    :try_start_0
    iget-object v1, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    .line 513
    :try_start_1
    iget-object v2, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Lorg/codeaurora/ims/ImsConfigImpl$SetCapabilityValueListener;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v2

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    move-object v1, v0

    .line 515
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onSetFeatureResponseDone :: Exception "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    if-nez v0, :cond_1

    .line 519
    const-string p1, "onSetFeatureResponseDone :: listener is null"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_1
    if-nez v1, :cond_2

    .line 524
    const-string p1, "onSetFeatureResponseDone :: capabilityStatusList is null"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 528
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :cond_3
    :goto_2
    if-ge v3, v2, :cond_5

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lorg/codeaurora/ims/CapabilityStatus;

    .line 529
    iget-object v5, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_4

    .line 530
    invoke-virtual {v4}, Lorg/codeaurora/ims/CapabilityStatus;->getCapability()I

    move-result v5

    .line 531
    invoke-virtual {v4}, Lorg/codeaurora/ims/CapabilityStatus;->getRadioTech()I

    move-result v6

    .line 532
    invoke-virtual {v4}, Lorg/codeaurora/ims/CapabilityStatus;->getStatus()I

    move-result v7

    .line 530
    invoke-interface {v0, v5, v6, v7}, Lorg/codeaurora/ims/ImsConfigImpl$SetCapabilityValueListener;->onSetCapabilityValueSuccess(III)V

    .line 534
    invoke-virtual {v4}, Lorg/codeaurora/ims/CapabilityStatus;->getCapability()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    .line 535
    invoke-virtual {v4}, Lorg/codeaurora/ims/CapabilityStatus;->getRadioTech()I

    move-result v5

    if-ne v5, v6, :cond_3

    .line 536
    invoke-virtual {v4}, Lorg/codeaurora/ims/CapabilityStatus;->getStatus()I

    move-result v4

    if-ne v4, v6, :cond_3

    .line 537
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->syncWfcMDN()V

    goto :goto_2

    .line 541
    :cond_4
    invoke-virtual {v4}, Lorg/codeaurora/ims/CapabilityStatus;->getCapability()I

    move-result v5

    .line 542
    invoke-virtual {v4}, Lorg/codeaurora/ims/CapabilityStatus;->getRadioTech()I

    move-result v4

    sget-object v6, Lorg/codeaurora/ims/ImsConfigImpl$SetCapabilityFailCause;->ERROR_GENERIC:Lorg/codeaurora/ims/ImsConfigImpl$SetCapabilityFailCause;

    .line 541
    invoke-interface {v0, v5, v4, v6}, Lorg/codeaurora/ims/ImsConfigImpl$SetCapabilityValueListener;->onSetCapabilityValueFailure(IILorg/codeaurora/ims/ImsConfigImpl$SetCapabilityFailCause;)V

    goto :goto_2

    :cond_5
    return-void
.end method

.method private sendSetConfigRequest(II)I
    .locals 7

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/16 v1, 0x2c

    const/4 v3, 0x1

    move-object v0, p0

    move v2, p1

    move v5, p2

    .line 680
    invoke-virtual/range {v0 .. v6}, Lorg/codeaurora/ims/ImsConfigImpl;->sendRequest(IIIZILjava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/codeaurora/telephony/utils/SomeArgs;

    .line 682
    iget-object p1, p0, Lorg/codeaurora/telephony/utils/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 683
    invoke-virtual {p0}, Lorg/codeaurora/telephony/utils/SomeArgs;->recycle()V

    .line 684
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v2, p0, p1}, Lorg/codeaurora/ims/ImsConfigImpl;->logImsConfigChangedCheckin(ILjava/lang/String;I)V

    return p1
.end method

.method private setVoiceDomainSetting()V
    .locals 1

    .line 872
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$8;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsConfigImpl$8;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    .line 894
    iget-object p0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mRequestHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private shouldAdjustVoWiFiMode()Z
    .locals 2

    .line 1142
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->getPhoneId()I

    move-result v0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    const-string v1, "carrier_wfc_supports_ims_preferred_bool"

    invoke-static {v0, p0, v1}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->isCarrierConfigEnabled(ILandroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private syncWfcMDN()V
    .locals 1

    .line 825
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$7;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsConfigImpl$7;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    .line 844
    iget-object p0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mRequestHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public checkinVolteProvision(ILjava/lang/String;)V
    .locals 1

    .line 952
    invoke-static {}, Lorg/codeaurora/ims/CheckinEvent;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 957
    :cond_0
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->getUserSetting()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    .line 965
    :cond_1
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$9;

    invoke-direct {v0, p0, p1, p2}, Lorg/codeaurora/ims/ImsConfigImpl$9;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;ILjava/lang/String;)V

    .line 1042
    iget-object p0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mRequestHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public dispose()V
    .locals 3

    .line 271
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 273
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "dispose :: Exception "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 276
    :goto_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    if-eqz v0, :cond_0

    .line 277
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 282
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    .line 283
    iget-object p0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_1
    return-void
.end method

.method public getConfigInt(I)I
    .locals 9

    .line 616
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getConfigInt :: item="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 617
    const-string v0, "getConfigInt"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->enforceReadPhoneState(Ljava/lang/String;)V

    const/16 v0, 0x46

    if-ne p1, v0, :cond_0

    .line 621
    iget-object p0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mConfigOem:Lorg/codeaurora/ims/ImsConfigImplOem;

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsConfigImplOem;->getTVolteHysTimer()I

    move-result p0

    return p0

    :cond_0
    const/16 v0, 0x49

    if-ne p1, v0, :cond_1

    .line 623
    iget-object p0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mConfigOem:Lorg/codeaurora/ims/ImsConfigImplOem;

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsConfigImplOem;->getImsSupportedServices()I

    move-result p0

    return p0

    :cond_1
    const/4 v0, 0x1

    .line 627
    invoke-static {p1, v0}, Lorg/codeaurora/ims/ImsCallUtils;->isConfigRequestValid(II)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_2

    .line 628
    const-string p1, "Invalid API request for item"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return v1

    :cond_2
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v3, 0x2d

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v2, p0

    move v4, p1

    .line 632
    invoke-virtual/range {v2 .. v8}, Lorg/codeaurora/ims/ImsConfigImpl;->sendRequest(IIIZILjava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/codeaurora/telephony/utils/SomeArgs;

    .line 634
    iget-object p1, p0, Lorg/codeaurora/telephony/utils/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    .line 635
    :cond_3
    iget-object p1, p0, Lorg/codeaurora/telephony/utils/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 636
    :goto_0
    invoke-virtual {p0}, Lorg/codeaurora/telephony/utils/SomeArgs;->recycle()V

    return v1
.end method

.method public getConfigString(I)Ljava/lang/String;
    .locals 9

    .line 648
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getConfigString :: item="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 649
    const-string v0, "getConfigString"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->enforceReadPhoneState(Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 650
    invoke-static {p1, v0}, Lorg/codeaurora/ims/ImsCallUtils;->isConfigRequestValid(II)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 651
    const-string p1, "Invalid API request for item"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1

    :cond_0
    const/16 v0, 0xc

    if-ne p1, v0, :cond_1

    .line 657
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->getDomainName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v3, 0x2d

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v2, p0

    move v4, p1

    .line 661
    invoke-virtual/range {v2 .. v8}, Lorg/codeaurora/ims/ImsConfigImpl;->sendRequest(IIIZILjava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/codeaurora/telephony/utils/SomeArgs;

    .line 663
    iget-object p1, p0, Lorg/codeaurora/telephony/utils/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 664
    :cond_2
    iget-object p1, p0, Lorg/codeaurora/telephony/utils/SomeArgs;->arg3:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    .line 665
    :goto_0
    invoke-virtual {p0}, Lorg/codeaurora/telephony/utils/SomeArgs;->recycle()V

    return-object v1
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 0

    .line 266
    iget-object p0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public getSubscriptionProperty(ILjava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 858
    :try_start_0
    const-string p0, "isub"

    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 861
    invoke-virtual {p3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object p3

    .line 860
    invoke-interface {p0, p1, p2, v0, p3}, Lcom/android/internal/telephony/ISub;->getSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSubscriptionsChangeListener()Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
    .locals 0

    .line 820
    iget-object p0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    return-object p0
.end method

.method protected sendRequest(IIIZILjava/lang/String;)Ljava/lang/Object;
    .locals 10

    .line 584
    invoke-static {}, Lorg/codeaurora/telephony/utils/SomeArgs;->obtain()Lorg/codeaurora/telephony/utils/SomeArgs;

    move-result-object v1

    .line 586
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v1, Lorg/codeaurora/telephony/utils/SomeArgs;->arg1:Ljava/lang/Object;

    .line 587
    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {p2}, Lorg/codeaurora/ims/ImsCallUtils;->convertImsConfigToImsConfigItem(I)I

    move-result v4

    iget-object p0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mHandler:Landroid/os/Handler;

    .line 589
    invoke-virtual {p0, p3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    const/4 v8, 0x0

    move v3, p1

    move v5, p4

    move v6, p5

    move-object/from16 v7, p6

    .line 587
    invoke-virtual/range {v2 .. v9}, Lorg/codeaurora/ims/ImsSenderRxr;->sendConfigRequest(IIZILjava/lang/String;ILandroid/os/Message;)V

    .line 591
    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 592
    :catch_0
    :goto_0
    :try_start_1
    iget-object p0, v1, Lorg/codeaurora/telephony/utils/SomeArgs;->arg2:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p0, :cond_0

    .line 594
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 599
    :cond_0
    :try_start_3
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catch_1
    const/4 p0, -0x1

    .line 601
    :try_start_5
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iput-object p0, v1, Lorg/codeaurora/telephony/utils/SomeArgs;->arg2:Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    :goto_1
    return-object v1
.end method

.method protected sendSetConfigRequestAsync(II)V
    .locals 9

    .line 689
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sendSetConfigRequestAsync :: item="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 690
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 691
    invoke-static {p1}, Lorg/codeaurora/ims/ImsCallUtils;->convertImsConfigToImsConfigItem(I)I

    move-result v3

    iget-object p0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mRequestHandler:Landroid/os/Handler;

    const/16 v0, 0x64

    .line 693
    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v8

    const/16 v2, 0x2c

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v5, p2

    .line 690
    invoke-virtual/range {v1 .. v8}, Lorg/codeaurora/ims/ImsSenderRxr;->sendConfigRequest(IIZILjava/lang/String;ILandroid/os/Message;)V

    return-void
.end method

.method public setCapabilityValue(Ljava/util/ArrayList;Lorg/codeaurora/ims/ImsConfigImpl$SetCapabilityValueListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/codeaurora/ims/CapabilityStatus;",
            ">;",
            "Lorg/codeaurora/ims/ImsConfigImpl$SetCapabilityValueListener;",
            ")V"
        }
    .end annotation

    .line 813
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "setCapabilityValue"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 814
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object p0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {p0, v1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    const/4 p2, 0x0

    invoke-virtual {v0, p0, p1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->setServiceStatus(Landroid/os/Message;Ljava/util/ArrayList;I)V

    return-void
.end method

.method public setConfig(II)I
    .locals 3

    .line 705
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setConfig :: item="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 706
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "setConfig"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x1a

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    .line 712
    const-string p1, "Ignore VoWiFi Roaming enable/disable"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    return v1

    :cond_0
    const/16 v0, 0x46

    if-ne p1, v0, :cond_1

    .line 718
    iget-object p0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mConfigOem:Lorg/codeaurora/ims/ImsConfigImplOem;

    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsConfigImplOem;->setTVolteHysTimer(I)I

    move-result p0

    return p0

    :cond_1
    const/16 v0, 0x49

    if-ne p1, v0, :cond_2

    .line 720
    iget-object p0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mConfigOem:Lorg/codeaurora/ims/ImsConfigImplOem;

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsConfigImplOem;->updateImsSupportedServicesAndNotify()V

    return v1

    .line 725
    :cond_2
    invoke-static {p1, v1}, Lorg/codeaurora/ims/ImsCallUtils;->isConfigRequestValid(II)Z

    move-result v0

    if-nez v0, :cond_3

    .line 726
    const-string p1, "Invalid API request for item"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return v1

    :cond_3
    const/16 v0, 0x1b

    if-ne p1, v0, :cond_4

    .line 737
    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    .line 738
    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsServiceSub;->IsWfcRoamingConfigurationSupportedByModem()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 739
    const-string p1, "VoWiFi mode: config update is done only when mode preference is changed or when sim is loaded"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    return v1

    :cond_4
    if-ne p1, v0, :cond_5

    .line 746
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->shouldAdjustVoWiFiMode()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 747
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "SubID "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mSubId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": Need adjust IMS Preferred mode"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 748
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsConfigImpl;->adjustVoWiFiMode(I)I

    move-result p2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_5

    .line 750
    const-string p1, "Inappropriate network, no need to set WFC mode!"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return v1

    .line 756
    :cond_5
    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsConfigImpl;->sendSetConfigRequest(II)I

    move-result p0

    return p0
.end method

.method public setConfig(ILjava/lang/String;)I
    .locals 8

    .line 770
    const-string v0, " value="

    const-string v1, "setConfig :: item="

    const/16 v2, 0x48

    if-ne p1, v2, :cond_0

    .line 771
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/qualcomm/ims/utils/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 773
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 776
    :goto_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v3, "setConfig"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 777
    invoke-static {p1, v0}, Lorg/codeaurora/ims/ImsCallUtils;->isConfigRequestValid(II)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 778
    const-string p1, "Invalid API request for item"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return v1

    :cond_1
    const/16 v0, 0xc

    if-ne p1, v0, :cond_2

    .line 784
    const-string p1, "ProvisioningManager.KEY_REGISTRATION_DOMAIN_NAME: value can\'t be changed"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    return v1

    :cond_2
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v2, 0x2c

    const/4 v4, 0x1

    move-object v1, p0

    move v3, p1

    move-object v7, p2

    .line 803
    invoke-virtual/range {v1 .. v7}, Lorg/codeaurora/ims/ImsConfigImpl;->sendRequest(IIIZILjava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/codeaurora/telephony/utils/SomeArgs;

    .line 805
    iget-object p1, p0, Lorg/codeaurora/telephony/utils/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 806
    invoke-virtual {p0}, Lorg/codeaurora/telephony/utils/SomeArgs;->recycle()V

    .line 807
    invoke-direct {v1, v3, v7, p1}, Lorg/codeaurora/ims/ImsConfigImpl;->logImsConfigChangedCheckin(ILjava/lang/String;I)V

    return p1
.end method

.method public updateWFCMode(Z)I
    .locals 5

    const-string v0, "SubID "

    const-string v1, "updateWFCMode: invalid sub = "

    .line 397
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "updateWFCMode: sub = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mSubId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " isRoamingMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 398
    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.MODIFY_PHONE_STATE"

    const-string v4, "updateWFCMode"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsConfigImpl;->enforceReadPhoneState(Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 402
    :try_start_0
    iget-object v3, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    if-eqz v3, :cond_5

    iget v4, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mSubId:I

    .line 403
    invoke-virtual {v3, v4}, Landroid/telephony/SubscriptionManager;->isActiveSubscriptionId(I)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 408
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mImsMmTelManager:Landroid/telephony/ims/ImsMmTelManager;

    if-nez v1, :cond_1

    .line 409
    const-string p1, "updateWFCMode: mImsMmTelManager null"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    return v2

    .line 413
    :cond_1
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsServiceSub;->IsWfcRoamingConfigurationSupportedByModem()Z

    move-result v1

    if-nez v1, :cond_2

    .line 414
    const-string p1, "Modem do not support WFC roaming config"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 424
    :cond_2
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mImsMmTelManager:Landroid/telephony/ims/ImsMmTelManager;

    if-eqz p1, :cond_3

    .line 421
    :try_start_1
    invoke-virtual {v1}, Landroid/telephony/ims/ImsMmTelManager;->getVoWiFiRoamingModeSetting()I

    move-result p1

    const/16 v1, 0x3eb

    goto :goto_0

    .line 424
    :cond_3
    invoke-virtual {v1}, Landroid/telephony/ims/ImsMmTelManager;->getVoWiFiModeSetting()I

    move-result p1

    const/16 v1, 0x1b

    .line 428
    :goto_0
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->shouldAdjustVoWiFiMode()Z

    move-result v3

    const/4 v4, -0x1

    if-eqz v3, :cond_4

    .line 429
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mSubId:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ": Need adjust IMS Preferred mode"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 430
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsConfigImpl;->adjustVoWiFiMode(I)I

    move-result p1

    if-ne p1, v4, :cond_4

    .line 432
    const-string p1, "Inappropriate network, no need to set WFC mode!"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return v2

    .line 438
    :cond_4
    invoke-virtual {p0, v1, p1}, Lorg/codeaurora/ims/ImsConfigImpl;->sendSetConfigRequestAsync(II)V

    return v4

    .line 404
    :cond_5
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mSubId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return v2

    .line 440
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Could not update WFCMode: invalid sub = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mSubId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    return v2
.end method

.method public updateWfcModeConfigurationsToModem()V
    .locals 2

    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "updateWfcModeConfigurationsToModem: mIsCarrierConfigLoaded = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mIsCarrierConfigLoaded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 388
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsServiceSub;->IsWfcRoamingConfigurationSupportedByModem()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mImsMmTelManager:Landroid/telephony/ims/ImsMmTelManager;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mIsCarrierConfigLoaded:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 390
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->updateWFCMode(Z)I

    const/4 v0, 0x1

    .line 391
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->updateWFCMode(Z)I

    :cond_0
    return-void
.end method
