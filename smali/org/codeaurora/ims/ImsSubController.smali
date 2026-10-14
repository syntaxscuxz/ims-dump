.class public Lorg/codeaurora/ims/ImsSubController;
.super Ljava/lang/Object;
.source "ImsSubController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/ims/ImsSubController$ImsSubControllerHandler;,
        Lorg/codeaurora/ims/ImsSubController$ImsStackConfigListener;,
        Lorg/codeaurora/ims/ImsSubController$OnMultiSimConfigChanged;,
        Lorg/codeaurora/ims/ImsSubController$ImsStateListener;
    }
.end annotation


# static fields
.field private static final ACTION_MSIM_VOICE_CAPABILITY:Ljava/lang/String; = "com.motorola.intent.action.MSIM_VOICE_CAPABILITY"

.field private static final DEFAULT_PHONE_ID:I = 0x0

.field private static final EVENT_GET_SUB_CONFIG:I = 0x2

.field private static final EVENT_IMS_SERVICE_DOWN:I = 0x4

.field private static final EVENT_IMS_SERVICE_UP:I = 0x3

.field private static final EVENT_MSIM_VOICE_CAPABILITY_CHANGED:I = 0x7

.field private static final EVENT_QUERY_MSIM_VOICE_CAPABILITY:I = 0x8

.field private static final EVENT_RADIO_AVAILABLE:I = 0x5

.field private static final EVENT_RADIO_NOT_AVAILABLE:I = 0x6

.field private static final EVENT_SUB_CONFIG_CHANGED:I = 0x1

.field private static final EXTRAS_DSDS_TRANSITION_SUPPORTED:Ljava/lang/String; = "DsdsTransitionSupported"

.field private static final EXTRAS_MSIM_VOICE_CAPABILITY:Ljava/lang/String; = "MsimVoiceCapability"

.field private static final INVALID_PHONE_ID:I = -0x1

.field private static final MAX_VALID_STACK_STATUS_COUNT:I = 0x6

.field private static final PERMISSION_MSIM_VOICE_CAPABILITY:Ljava/lang/String; = "com.motorola.permission.RECEIVE_MSIM_VOICE_CAPABILITY"


# instance fields
.field private mActiveStacks:[Z

.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIsDsdsTransitionFeatureSupported:Z

.field private mIsDsdv:Z

.field private mIsSimultaneousCallingSupported:Z

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/ImsSubController$ImsStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mModemSimultStackCount:I

.field private mModemStackStatus:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private mMultiSimConfigChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mOnMultiSimConfigChangedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/ImsSubController$OnMultiSimConfigChanged;",
            ">;"
        }
    .end annotation
.end field

.field private mSenderRxrs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/ImsSenderRxr;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceSubs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/ImsServiceSub;",
            ">;"
        }
    .end annotation
.end field

.field private mStackConfigListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/ImsSubController$ImsStackConfigListener;",
            ">;"
        }
    .end annotation
.end field

.field private mTm:Landroid/telephony/TelephonyManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmIsSimultaneousCallingSupported(Lorg/codeaurora/ims/ImsSubController;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/codeaurora/ims/ImsSubController;->mIsSimultaneousCallingSupported:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$mdeRegisterFromRadioEvents(Lorg/codeaurora/ims/ImsSubController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsSubController;->deRegisterFromRadioEvents(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleMultiSimVoiceCapability(Lorg/codeaurora/ims/ImsSubController;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsSubController;->handleMultiSimVoiceCapability(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleOnMultiSimConfigChanged(Lorg/codeaurora/ims/ImsSubController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsSubController;->handleOnMultiSimConfigChanged(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleRadioAvailable(Lorg/codeaurora/ims/ImsSubController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsSubController;->handleRadioAvailable(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleSubConfigChanged(Lorg/codeaurora/ims/ImsSubController;Lorg/codeaurora/telephony/utils/AsyncResult;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsSubController;->handleSubConfigChanged(Lorg/codeaurora/telephony/utils/AsyncResult;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$misAidlReorderingSupported(Lorg/codeaurora/ims/ImsSubController;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsSubController;->isAidlReorderingSupported(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misDisposed(Lorg/codeaurora/ims/ImsSubController;)Z
    .locals 0

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSubController;->isDisposed()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mregisterForRadioEvents(Lorg/codeaurora/ims/ImsSubController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsSubController;->registerForRadioEvents(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateStackConfig(Lorg/codeaurora/ims/ImsSubController;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsSubController;->updateStackConfig(IZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 187
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/ImsSubController;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 3

    .line 191
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    invoke-direct {p0, p1, v0, v1, p2}, Lorg/codeaurora/ims/ImsSubController;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Landroid/os/Looper;)V

    .line 193
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsSubController;->getActiveModemCount()I

    move-result p2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_0

    .line 195
    invoke-direct {p0, p1, v1}, Lorg/codeaurora/ims/ImsSubController;->createImsSenderRxr(Landroid/content/Context;I)V

    .line 196
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSubController;->mSenderRxrs:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-direct {p0, p1, v1, v2}, Lorg/codeaurora/ims/ImsSubController;->createImsServiceSub(Landroid/content/Context;ILorg/codeaurora/ims/ImsSenderRxr;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 198
    :cond_0
    iget-object p1, p0, Lorg/codeaurora/ims/ImsSubController;->mSenderRxrs:Ljava/util/List;

    if-eqz p1, :cond_1

    .line 199
    invoke-static {}, Lorg/codeaurora/ims/ImsSubController;->getDefaultPhoneId()I

    move-result p2

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/codeaurora/ims/ImsSenderRxr;

    const/16 p2, 0xe

    invoke-virtual {p1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->isFeatureSupported(I)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsSubController;->mIsDsdsTransitionFeatureSupported:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Landroid/os/Looper;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/ImsSenderRxr;",
            ">;",
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/ImsServiceSub;",
            ">;",
            "Landroid/os/Looper;",
            ")V"
        }
    .end annotation

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mListeners:Ljava/util/List;

    .line 38
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mStackConfigListeners:Ljava/util/List;

    .line 39
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mOnMultiSimConfigChangedListeners:Ljava/util/List;

    const/4 v0, 0x0

    .line 55
    iput v0, p0, Lorg/codeaurora/ims/ImsSubController;->mModemSimultStackCount:I

    .line 57
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/codeaurora/ims/ImsSubController;->mModemStackStatus:Ljava/util/HashMap;

    const/4 v1, 0x6

    .line 61
    new-array v1, v1, [Z

    iput-object v1, p0, Lorg/codeaurora/ims/ImsSubController;->mActiveStacks:[Z

    const/4 v1, 0x1

    .line 69
    iput-boolean v1, p0, Lorg/codeaurora/ims/ImsSubController;->mIsDsdv:Z

    const/4 v1, 0x0

    .line 70
    iput-object v1, p0, Lorg/codeaurora/ims/ImsSubController;->mTm:Landroid/telephony/TelephonyManager;

    .line 78
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsSubController;->mIsDsdsTransitionFeatureSupported:Z

    .line 79
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsSubController;->mIsSimultaneousCallingSupported:Z

    .line 669
    new-instance v0, Lorg/codeaurora/ims/ImsSubController$1;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsSubController$1;-><init>(Lorg/codeaurora/ims/ImsSubController;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mMultiSimConfigChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 205
    iput-object p1, p0, Lorg/codeaurora/ims/ImsSubController;->mContext:Landroid/content/Context;

    .line 206
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mTm:Landroid/telephony/TelephonyManager;

    .line 207
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mMultiSimConfigChangedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.telephony.action.MULTI_SIM_CONFIG_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x2

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 210
    iput-object p2, p0, Lorg/codeaurora/ims/ImsSubController;->mSenderRxrs:Ljava/util/List;

    .line 211
    iput-object p3, p0, Lorg/codeaurora/ims/ImsSubController;->mServiceSubs:Ljava/util/List;

    .line 212
    new-instance p1, Lorg/codeaurora/ims/ImsSubController$ImsSubControllerHandler;

    invoke-direct {p1, p0, p4}, Lorg/codeaurora/ims/ImsSubController$ImsSubControllerHandler;-><init>(Lorg/codeaurora/ims/ImsSubController;Landroid/os/Looper;)V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsSubController;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private broadcastConcurrentCallsIntent(I)V
    .locals 2

    .line 372
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.motorola.intent.action.MSIM_VOICE_CAPABILITY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 373
    const-string v1, "MsimVoiceCapability"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 374
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "is dsds transition feature supported: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lorg/codeaurora/ims/ImsSubController;->mIsDsdsTransitionFeatureSupported:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 376
    const-string p1, "DsdsTransitionSupported"

    iget-boolean v1, p0, Lorg/codeaurora/ims/ImsSubController;->mIsDsdsTransitionFeatureSupported:Z

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 378
    iget-object p0, p0, Lorg/codeaurora/ims/ImsSubController;->mContext:Landroid/content/Context;

    const-string p1, "com.motorola.permission.RECEIVE_MSIM_VOICE_CAPABILITY"

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method private createImsSenderRxr(Landroid/content/Context;I)V
    .locals 3

    .line 224
    new-instance p1, Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;-><init>(Landroid/content/Context;I)V

    .line 225
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 226
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 227
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForImsServiceUp(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 228
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v0, v1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForImsServiceDown(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 229
    iget-object p0, p0, Lorg/codeaurora/ims/ImsSubController;->mSenderRxrs:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private createImsServiceSub(Landroid/content/Context;ILorg/codeaurora/ims/ImsSenderRxr;)V
    .locals 1

    .line 233
    new-instance v0, Lorg/codeaurora/ims/ImsServiceSub;

    invoke-direct {v0, p1, p2, p3, p0}, Lorg/codeaurora/ims/ImsServiceSub;-><init>(Landroid/content/Context;ILorg/codeaurora/ims/ImsSenderRxr;Lorg/codeaurora/ims/ImsSubController;)V

    .line 234
    iget-object p0, p0, Lorg/codeaurora/ims/ImsSubController;->mServiceSubs:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private deRegisterFromRadioEvents(I)V
    .locals 2

    .line 544
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mTm:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    goto :goto_0

    .line 549
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mSenderRxrs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsSenderRxr;

    if-nez v0, :cond_1

    .line 551
    const-string p1, "deRegisterFromRadioEvents: ImsSenderRxr is null"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 555
    :cond_1
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSubController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->unregisterForImsSubConfigChanged(Landroid/os/Handler;)V

    if-nez p1, :cond_2

    .line 566
    iget-object p0, p0, Lorg/codeaurora/ims/ImsSubController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsSenderRxr;->unregisterForMultiSimVoiceCapabilityChanged(Landroid/os/Handler;)V

    return-void

    .line 561
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "deRegisterFromRadioEvents: phoneId: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not primary subscription."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 545
    :cond_3
    :goto_0
    const-string p1, "deRegisterFromRadioEvents: Single SIM mode"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private disposeImsSenderRxr(I)V
    .locals 2

    .line 714
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mSenderRxrs:Ljava/util/List;

    if-eqz v0, :cond_1

    if-ltz p1, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 718
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "disposeImsSenderRxr: phoneId - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 719
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mSenderRxrs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsSenderRxr;

    .line 720
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->dispose()V

    .line 721
    iget-object p0, p0, Lorg/codeaurora/ims/ImsSubController;->mSenderRxrs:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void

    .line 715
    :cond_1
    :goto_0
    const-string p1, "disposeImsSenderRxr: cannot find instance to dispose"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static getDefaultPhoneId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private handleModemImsStackNotSupported()V
    .locals 2

    .line 619
    const-string v0, "handleModemImsStackNotSupported"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 620
    iput v0, p0, Lorg/codeaurora/ims/ImsSubController;->mModemSimultStackCount:I

    .line 621
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSubController;->mModemStackStatus:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 622
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsSubController;->mIsDsdv:Z

    .line 627
    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsSubController;->updateActiveImsStackForPhoneId(I)V

    return-void
.end method

.method private handleMultiSimVoiceCapability(Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 2

    .line 357
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 358
    iget-object p1, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast p1, Lorg/codeaurora/ims/ImsRilException;

    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsRilException;->getCode()I

    move-result p1

    .line 359
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handleMultiSimVoiceCapability errorCode: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 363
    :cond_0
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 364
    const-string p1, "handleMultiSimVoiceCapability ar.result is null"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 368
    :cond_1
    iget-object p1, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsSubController;->broadcastConcurrentCallsIntent(I)V

    return-void
.end method

.method private handleOnMultiSimConfigChanged(I)V
    .locals 2

    .line 686
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSubController;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 687
    const-string p1, "handleOnMultiSimConfigChanged: already disposed.Ignore."

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 690
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mServiceSubs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 692
    const-string p1, "The number of slots is equal to the current size, nothing to do"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_1
    if-le p1, v0, :cond_2

    .line 696
    invoke-direct {p0, v0, p1}, Lorg/codeaurora/ims/ImsSubController;->switchToMultiSim(II)V

    goto :goto_0

    .line 698
    :cond_2
    invoke-direct {p0, v0, p1}, Lorg/codeaurora/ims/ImsSubController;->switchToSingleSim(II)V

    const/4 v1, 0x0

    .line 699
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsSubController;->broadcastConcurrentCallsIntent(I)V

    .line 701
    :goto_0
    invoke-direct {p0, v0, p1}, Lorg/codeaurora/ims/ImsSubController;->notifyOnMultiSimConfigChanged(II)V

    return-void
.end method

.method private handleRadioAvailable(I)V
    .locals 4

    .line 482
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSubController;->maybeInitDefaultSubscriptionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 483
    const-string p1, "handleRadioAvailable: Single SIM mode direct initialization"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 490
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mSenderRxrs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsSenderRxr;

    if-nez v0, :cond_1

    .line 492
    const-string p1, "handleRadioAvailable: ImsSenderRxr is null"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 496
    :cond_1
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSubController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->getImsSubConfig(Landroid/os/Message;)V

    if-nez p1, :cond_2

    .line 498
    iget-object p0, p0, Lorg/codeaurora/ims/ImsSubController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    .line 499
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 498
    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsSenderRxr;->queryMultiSimVoiceCapability(Landroid/os/Message;)V

    :cond_2
    return-void
.end method

.method private handleSubConfigChanged(Lorg/codeaurora/telephony/utils/AsyncResult;Z)V
    .locals 4

    .line 325
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsSubController;->isMultiSimEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 326
    const-string p1, "handleSubConfigChanged: Single SIM mode"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 329
    :cond_0
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_1

    .line 330
    iget-object p1, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsSubController;->handleSubConfigException(Ljava/lang/Throwable;)V

    return-void

    .line 331
    :cond_1
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_5

    .line 332
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/ims/ImsSubConfigDetails;

    .line 333
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handleSubConfigChanged config: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_2

    .line 335
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsSubConfigDetails;->getSimultStackCount()I

    move-result p2

    iput p2, p0, Lorg/codeaurora/ims/ImsSubController;->mModemSimultStackCount:I

    .line 337
    :cond_2
    iget-object p2, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->userObj:Ljava/lang/Object;

    if-nez p2, :cond_3

    .line 338
    const-string p1, "handleSubConfigChanged ar.userObj is null"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 342
    :cond_3
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsSubConfigDetails;->getImsStackEnabledList()Ljava/util/List;

    move-result-object p2

    .line 343
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mModemStackStatus:Ljava/util/HashMap;

    iget-object v1, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x6

    .line 344
    new-array v1, v0, [Z

    const/4 v2, 0x0

    .line 346
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    if-ge v2, v0, :cond_4

    .line 347
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    aput-boolean v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 350
    :cond_4
    iget-object p1, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, v1, p1}, Lorg/codeaurora/ims/ImsSubController;->notifyStackConfigChanged([ZI)V

    return-void

    .line 352
    :cond_5
    const-string p1, "ar.result and ar.exception are null"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private handleSubConfigException(Ljava/lang/Throwable;)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 314
    :goto_0
    invoke-static {v0}, Lorg/codeaurora/telephony/utils/Preconditions;->checkArgument(Z)V

    .line 315
    check-cast p1, Lorg/codeaurora/ims/ImsRilException;

    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsRilException;->getCode()I

    move-result p1

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handleSubConfigException error : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x6

    if-ne p1, v0, :cond_1

    .line 318
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSubController;->handleModemImsStackNotSupported()V

    return-void

    .line 320
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unhandled error code : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private isAidlReorderingSupported(I)Z
    .locals 1

    .line 382
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mSenderRxrs:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mSenderRxrs:Ljava/util/List;

    .line 383
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 386
    :cond_0
    iget-object p0, p0, Lorg/codeaurora/ims/ImsSubController;->mSenderRxrs:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsSenderRxr;->isAidlReorderingSupported()Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private isDisposed()Z
    .locals 0

    .line 655
    iget-object p0, p0, Lorg/codeaurora/ims/ImsSubController;->mHandler:Landroid/os/Handler;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isSimultaneousCallingSupported(I)Z
    .locals 1

    .line 390
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mSenderRxrs:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mSenderRxrs:Ljava/util/List;

    .line 391
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 394
    :cond_0
    iget-object p0, p0, Lorg/codeaurora/ims/ImsSubController;->mSenderRxrs:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsSenderRxr;->isSimultaneousCallingSupported()Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private maybeInitDefaultSubscriptionStatus()Z
    .locals 3

    const/4 v0, 0x0

    .line 605
    iput v0, p0, Lorg/codeaurora/ims/ImsSubController;->mModemSimultStackCount:I

    .line 606
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSubController;->mModemStackStatus:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 607
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSubController;->mTm:Landroid/telephony/TelephonyManager;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v1

    if-gt v1, v2, :cond_0

    goto :goto_0

    :cond_0
    return v0

    .line 609
    :cond_1
    :goto_0
    const-string v1, "maybeInitDefaultSubscriptionStatus: Not multi-sim."

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 610
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsSubController;->mIsDsdv:Z

    .line 611
    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsSubController;->updateActiveImsStackForPhoneId(I)V

    return v2
.end method

.method private notifyOnMultiSimConfigChanged(II)V
    .locals 2

    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "notifyOnMultiSimConfigChanged: prevModemCount: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " activeModemCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    if-ne p1, p2, :cond_0

    goto :goto_1

    .line 308
    :cond_0
    iget-object p0, p0, Lorg/codeaurora/ims/ImsSubController;->mOnMultiSimConfigChangedListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsSubController$OnMultiSimConfigChanged;

    .line 309
    invoke-interface {v0, p1, p2}, Lorg/codeaurora/ims/ImsSubController$OnMultiSimConfigChanged;->onMultiSimConfigChanged(II)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private notifyStackConfigChanged([ZI)V
    .locals 2

    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "notifyStackConfigChanged: activeStacks:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " phoneId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 297
    iget-object p0, p0, Lorg/codeaurora/ims/ImsSubController;->mStackConfigListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsSubController$ImsStackConfigListener;

    .line 298
    invoke-interface {v0, p1, p2}, Lorg/codeaurora/ims/ImsSubController$ImsStackConfigListener;->onStackConfigChanged([ZI)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private registerForRadioEvents(I)V
    .locals 6

    .line 504
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSubController;->maybeInitDefaultSubscriptionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 505
    const-string p1, "registerForRadioEvents: Single SIM mode direct initialization"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 509
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mSenderRxrs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsSenderRxr;

    if-nez v0, :cond_1

    .line 511
    const-string p1, "registerForRadioEvents: ImsSenderRxr is null"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_2

    move v3, v2

    goto :goto_0

    :cond_2
    move v3, v1

    .line 516
    :goto_0
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->getRadioState()Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 517
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->getRadioState()Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;

    move-result-object v4

    invoke-virtual {v4}, Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;->isAvailable()Z

    move-result v4

    if-eqz v4, :cond_3

    move v1, v2

    .line 518
    :cond_3
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSubController;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v2, v5}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForImsSubConfigChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    if-eqz v1, :cond_4

    .line 520
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSubController;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->getImsSubConfig(Landroid/os/Message;)V

    :cond_4
    if-nez v3, :cond_5

    .line 526
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "registerForRadioEvents: phoneId: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not primary subscription."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 532
    :cond_5
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsSubController;->isSimultaneousCallingSupported(I)Z

    move-result v2

    iput-boolean v2, p0, Lorg/codeaurora/ims/ImsSubController;->mIsSimultaneousCallingSupported:Z

    if-nez v2, :cond_6

    .line 534
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSubController;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x7

    .line 535
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 534
    invoke-virtual {v0, v2, v3, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForMultiSimVoiceCapabilityChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    :cond_6
    if-eqz v1, :cond_7

    .line 538
    iget-object p0, p0, Lorg/codeaurora/ims/ImsSubController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    .line 539
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 538
    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsSenderRxr;->queryMultiSimVoiceCapability(Landroid/os/Message;)V

    :cond_7
    return-void
.end method

.method private switchToMultiSim(II)V
    .locals 2

    :goto_0
    if-ge p1, p2, :cond_0

    .line 727
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lorg/codeaurora/ims/ImsSubController;->createImsSenderRxr(Landroid/content/Context;I)V

    .line 728
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSubController;->mSenderRxrs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-direct {p0, v0, p1, v1}, Lorg/codeaurora/ims/ImsSubController;->createImsServiceSub(Landroid/content/Context;ILorg/codeaurora/ims/ImsSenderRxr;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private switchToSingleSim(II)V
    .locals 1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-lt p1, p2, :cond_0

    .line 707
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mServiceSubs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsServiceSub;->dispose()V

    .line 708
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mServiceSubs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 709
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsSubController;->disposeImsSenderRxr(I)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateActiveImsStackForPhoneId(I)V
    .locals 4

    .line 633
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSubController;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 634
    const-string p1, "updateActiveImsStackForPhoneId return as ImsSubController is disposed"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 639
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "switchImsPhone: Invalid phoneId: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    .line 643
    :goto_0
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSubController;->mActiveStacks:[Z

    array-length v3, v2

    if-ge v1, v3, :cond_3

    if-ne v1, p1, :cond_2

    const/4 v3, 0x1

    .line 645
    aput-boolean v3, v2, v1

    goto :goto_1

    .line 647
    :cond_2
    aput-boolean v0, v2, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 651
    :cond_3
    invoke-direct {p0, v2, p1}, Lorg/codeaurora/ims/ImsSubController;->notifyStackConfigChanged([ZI)V

    return-void
.end method

.method private updateStackConfig(IZ)V
    .locals 4

    .line 571
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mModemStackStatus:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 572
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "updateStackConfig phoneId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " isEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsDsdv : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lorg/codeaurora/ims/ImsSubController;->mIsDsdv:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 575
    iget-boolean v1, p0, Lorg/codeaurora/ims/ImsSubController;->mIsDsdv:Z

    const-string v2, "updateStackConfig nothing to update"

    if-eqz v1, :cond_3

    if-eqz v0, :cond_2

    .line 576
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_0

    goto :goto_1

    .line 581
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-ne v1, p2, :cond_1

    .line 582
    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v1, 0x6

    .line 586
    new-array v2, v1, [Z

    .line 587
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x0

    .line 588
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge p2, v3, :cond_5

    if-ge p2, v1, :cond_5

    .line 589
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    aput-boolean v3, v2, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 577
    :cond_2
    :goto_1
    const-string p1, "updateStackConfig Stacks are not yet initialized"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 592
    :cond_3
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mActiveStacks:[Z

    aget-boolean v1, v0, p1

    if-ne v1, p2, :cond_4

    .line 593
    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 597
    :cond_4
    aput-boolean p2, v0, p1

    move-object v2, v0

    .line 600
    :cond_5
    invoke-direct {p0, v2, p1}, Lorg/codeaurora/ims/ImsSubController;->notifyStackConfigChanged([ZI)V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 3

    .line 733
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSubController;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 734
    const-string v0, "dispose: returning as already disposed"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 737
    :cond_0
    const-string v0, "dispose ImsSubController, unregistering handler and listeners"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 738
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSubController;->mMultiSimConfigChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 739
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mServiceSubs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ImsServiceSub;

    .line 740
    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsServiceSub;->dispose()V

    goto :goto_0

    .line 742
    :cond_1
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mSenderRxrs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ImsSenderRxr;

    .line 743
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSubController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->unregisterForAvailable(Landroid/os/Handler;)V

    .line 744
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSubController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->unregisterForNotAvailable(Landroid/os/Handler;)V

    .line 745
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSubController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->unregisterForImsServiceUp(Landroid/os/Handler;)V

    .line 746
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSubController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->unregisterForImsServiceDown(Landroid/os/Handler;)V

    .line 747
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSubController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->unregisterForImsSubConfigChanged(Landroid/os/Handler;)V

    .line 748
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSubController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->unregisterForMultiSimVoiceCapabilityChanged(Landroid/os/Handler;)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 750
    iput-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mTm:Landroid/telephony/TelephonyManager;

    .line 751
    iput-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mHandler:Landroid/os/Handler;

    .line 752
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSubController;->mServiceSubs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 753
    iput-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mServiceSubs:Ljava/util/List;

    .line 754
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSubController;->mSenderRxrs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 755
    iput-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mSenderRxrs:Ljava/util/List;

    .line 756
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSubController;->mStackConfigListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 757
    iput-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mStackConfigListeners:Ljava/util/List;

    .line 758
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSubController;->mOnMultiSimConfigChangedListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 759
    iput-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mOnMultiSimConfigChangedListeners:Ljava/util/List;

    .line 760
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSubController;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 761
    iput-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mListeners:Ljava/util/List;

    const/4 v0, 0x0

    .line 762
    iput v0, p0, Lorg/codeaurora/ims/ImsSubController;->mModemSimultStackCount:I

    .line 763
    iget-object p0, p0, Lorg/codeaurora/ims/ImsSubController;->mModemStackStatus:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public getActiveModemCount()I
    .locals 0

    .line 220
    iget-object p0, p0, Lorg/codeaurora/ims/ImsSubController;->mTm:Landroid/telephony/TelephonyManager;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result p0

    return p0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 0

    .line 244
    iget-object p0, p0, Lorg/codeaurora/ims/ImsSubController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public getServiceSub(I)Lorg/codeaurora/ims/ImsServiceSub;
    .locals 1

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    .line 663
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mServiceSubs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 664
    iget-object p0, p0, Lorg/codeaurora/ims/ImsSubController;->mServiceSubs:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/codeaurora/ims/ImsServiceSub;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getServiceSubs()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/ImsServiceSub;",
            ">;"
        }
    .end annotation

    .line 659
    iget-object p0, p0, Lorg/codeaurora/ims/ImsSubController;->mServiceSubs:Ljava/util/List;

    return-object p0
.end method

.method public isDsdv()Z
    .locals 0

    .line 291
    iget-boolean p0, p0, Lorg/codeaurora/ims/ImsSubController;->mIsDsdv:Z

    return p0
.end method

.method public isMultiSimEnabled()Z
    .locals 1

    .line 216
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsSubController;->getActiveModemCount()I

    move-result p0

    const/4 v0, 0x1

    if-le p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public registerListener(Lorg/codeaurora/ims/ImsSubController$ImsStackConfigListener;I)V
    .locals 1

    .line 114
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSubController;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    const-string p1, "returning as ImsSubController is disposed"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p1, :cond_2

    .line 121
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mStackConfigListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 122
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mStackConfigListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 124
    :cond_1
    const-string p1, "registerListener :: duplicate stackConfigListener!"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    :goto_0
    iget-object p1, p0, Lorg/codeaurora/ims/ImsSubController;->mActiveStacks:[Z

    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsSubController;->notifyStackConfigChanged([ZI)V

    return-void

    .line 119
    :cond_2
    const-string p0, "stackConfigListener is null!"

    invoke-static {p0}, Lorg/codeaurora/ims/ImsServiceSub$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    return-void
.end method

.method public registerListener(Lorg/codeaurora/ims/ImsSubController$ImsStateListener;)V
    .locals 2

    .line 254
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSubController;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    const-string p1, "registerListener, returning as isDisposed"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p1, :cond_2

    .line 261
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 262
    iget-object p0, p0, Lorg/codeaurora/ims/ImsSubController;->mListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 264
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Duplicate listener "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 259
    :cond_2
    const-string p0, "listener is null"

    invoke-static {p0}, Lorg/codeaurora/ims/ImsServiceSub$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    return-void
.end method

.method public registerListener(Lorg/codeaurora/ims/ImsSubController$OnMultiSimConfigChanged;)V
    .locals 1

    .line 154
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSubController;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    const-string p1, "returning as ImsSubController is disposed"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p1, :cond_2

    .line 161
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mOnMultiSimConfigChangedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 162
    iget-object p0, p0, Lorg/codeaurora/ims/ImsSubController;->mOnMultiSimConfigChangedListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 164
    :cond_1
    const-string p1, "registerListener :: duplicate OnMultiSimConfigChanged listener!"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 159
    :cond_2
    const-string p0, "simConfigChangedListener is null!"

    invoke-static {p0}, Lorg/codeaurora/ims/ImsServiceSub$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    return-void
.end method

.method public setIsDsdv(Z)V
    .locals 0

    .line 239
    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsSubController;->mIsDsdv:Z

    return-void
.end method

.method public unregisterListener(Lorg/codeaurora/ims/ImsSubController$ImsStackConfigListener;)Z
    .locals 1

    .line 137
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSubController;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    const-string p1, "returning as ImsSubController is disposed"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    if-eqz p1, :cond_1

    .line 144
    iget-object p0, p0, Lorg/codeaurora/ims/ImsSubController;->mStackConfigListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 142
    :cond_1
    const-string p0, "stackConfigListener is null"

    invoke-static {p0}, Lorg/codeaurora/ims/ImsServiceSub$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public unregisterListener(Lorg/codeaurora/ims/ImsSubController$ImsStateListener;)Z
    .locals 1

    .line 276
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSubController;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    const-string p1, "unregisterListener, returning as isDisposed"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    if-eqz p1, :cond_1

    .line 283
    iget-object p0, p0, Lorg/codeaurora/ims/ImsSubController;->mListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 281
    :cond_1
    const-string p0, "listener is null"

    invoke-static {p0}, Lorg/codeaurora/ims/ImsServiceSub$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public unregisterListener(Lorg/codeaurora/ims/ImsSubController$OnMultiSimConfigChanged;)Z
    .locals 1

    .line 176
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSubController;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    const-string p1, "returning as ImsSubController is disposed"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    if-eqz p1, :cond_1

    .line 183
    iget-object p0, p0, Lorg/codeaurora/ims/ImsSubController;->mOnMultiSimConfigChangedListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 181
    :cond_1
    const-string p0, "simConfigChangedListener"

    invoke-static {p0}, Lorg/codeaurora/ims/ImsServiceSub$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method
