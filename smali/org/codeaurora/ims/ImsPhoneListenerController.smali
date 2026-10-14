.class public Lorg/codeaurora/ims/ImsPhoneListenerController;
.super Ljava/lang/Object;
.source "ImsPhoneListenerController.java"


# static fields
.field private static final DBG:Z = false

.field private static sInstance:Lorg/codeaurora/ims/ImsPhoneListenerController;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mListeners:[Lorg/codeaurora/ims/ImsPhoneStateListener;

.field private mSubChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private mSubMgr:Landroid/telephony/SubscriptionManager;


# direct methods
.method static bridge synthetic -$$Nest$mupdatePhoneStateListeners(Lorg/codeaurora/ims/ImsPhoneListenerController;)V
    .locals 0

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsPhoneListenerController;->updatePhoneStateListeners()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Lorg/codeaurora/ims/ImsPhoneListenerController$1;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsPhoneListenerController$1;-><init>(Lorg/codeaurora/ims/ImsPhoneListenerController;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsPhoneListenerController;->mSubChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 43
    iput-object p1, p0, Lorg/codeaurora/ims/ImsPhoneListenerController;->mContext:Landroid/content/Context;

    .line 44
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object p1

    iput-object p1, p0, Lorg/codeaurora/ims/ImsPhoneListenerController;->mSubMgr:Landroid/telephony/SubscriptionManager;

    .line 47
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 48
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 51
    :goto_0
    new-array p1, p1, [Lorg/codeaurora/ims/ImsPhoneStateListener;

    iput-object p1, p0, Lorg/codeaurora/ims/ImsPhoneListenerController;->mListeners:[Lorg/codeaurora/ims/ImsPhoneStateListener;

    const/4 p1, 0x0

    .line 52
    :goto_1
    iget-object v0, p0, Lorg/codeaurora/ims/ImsPhoneListenerController;->mListeners:[Lorg/codeaurora/ims/ImsPhoneStateListener;

    array-length v1, v0

    if-ge p1, v1, :cond_1

    const/4 v1, 0x0

    .line 53
    aput-object v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lorg/codeaurora/ims/ImsPhoneListenerController;
    .locals 2

    const-class v0, Lorg/codeaurora/ims/ImsPhoneListenerController;

    monitor-enter v0

    .line 26
    :try_start_0
    sget-object v1, Lorg/codeaurora/ims/ImsPhoneListenerController;->sInstance:Lorg/codeaurora/ims/ImsPhoneListenerController;

    if-nez v1, :cond_0

    .line 27
    new-instance v1, Lorg/codeaurora/ims/ImsPhoneListenerController;

    invoke-direct {v1, p0}, Lorg/codeaurora/ims/ImsPhoneListenerController;-><init>(Landroid/content/Context;)V

    sput-object v1, Lorg/codeaurora/ims/ImsPhoneListenerController;->sInstance:Lorg/codeaurora/ims/ImsPhoneListenerController;

    .line 29
    :cond_0
    sget-object p0, Lorg/codeaurora/ims/ImsPhoneListenerController;->sInstance:Lorg/codeaurora/ims/ImsPhoneListenerController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private logd(Ljava/lang/String;)V
    .locals 0

    .line 131
    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private logv(Ljava/lang/String;)V
    .locals 2

    .line 125
    const-string v0, "QImsService"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private registerForNotifications()V
    .locals 2

    .line 109
    iget-object v0, p0, Lorg/codeaurora/ims/ImsPhoneListenerController;->mSubMgr:Landroid/telephony/SubscriptionManager;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsPhoneListenerController;->mSubChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 110
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsPhoneListenerController;->updatePhoneStateListeners()V

    return-void
.end method

.method private unregisterForNotifications()V
    .locals 3

    const/4 v0, 0x0

    .line 114
    :goto_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsPhoneListenerController;->mListeners:[Lorg/codeaurora/ims/ImsPhoneStateListener;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 115
    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 116
    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsPhoneStateListener;->unregister()V

    .line 117
    iget-object v1, p0, Lorg/codeaurora/ims/ImsPhoneListenerController;->mListeners:[Lorg/codeaurora/ims/ImsPhoneStateListener;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 120
    :cond_1
    iget-object v0, p0, Lorg/codeaurora/ims/ImsPhoneListenerController;->mSubMgr:Landroid/telephony/SubscriptionManager;

    iget-object p0, p0, Lorg/codeaurora/ims/ImsPhoneListenerController;->mSubChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v0, p0}, Landroid/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    return-void
.end method

.method private updatePhoneStateListeners()V
    .locals 6

    .line 67
    const-string v0, "updatePhoneStateListeners"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsPhoneListenerController;->logv(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lorg/codeaurora/ims/ImsPhoneListenerController;->mSubMgr:Landroid/telephony/SubscriptionManager;

    if-eqz v0, :cond_9

    iget-object v1, p0, Lorg/codeaurora/ims/ImsPhoneListenerController;->mListeners:[Lorg/codeaurora/ims/ImsPhoneStateListener;

    if-nez v1, :cond_0

    goto/16 :goto_4

    .line 72
    :cond_0
    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 73
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_1

    goto/16 :goto_3

    .line 78
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    .line 79
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "activeSubInfo: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsPhoneListenerController;->logv(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v2

    .line 82
    iget-object v3, p0, Lorg/codeaurora/ims/ImsPhoneListenerController;->mListeners:[Lorg/codeaurora/ims/ImsPhoneStateListener;

    array-length v3, v3

    if-lt v2, v3, :cond_3

    goto :goto_0

    .line 86
    :cond_3
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    const/4 v3, 0x0

    .line 87
    :goto_1
    iget-object v4, p0, Lorg/codeaurora/ims/ImsPhoneListenerController;->mListeners:[Lorg/codeaurora/ims/ImsPhoneStateListener;

    array-length v5, v4

    if-ge v3, v5, :cond_7

    .line 88
    aget-object v4, v4, v3

    if-eqz v4, :cond_6

    .line 89
    invoke-virtual {v4}, Lorg/codeaurora/ims/ImsPhoneStateListener;->getSubscriptionId()I

    move-result v4

    if-ne v2, v3, :cond_4

    if-ne v1, v4, :cond_4

    goto :goto_2

    :cond_4
    if-eq v2, v3, :cond_5

    if-eq v1, v4, :cond_5

    goto :goto_2

    .line 96
    :cond_5
    iget-object v4, p0, Lorg/codeaurora/ims/ImsPhoneListenerController;->mListeners:[Lorg/codeaurora/ims/ImsPhoneStateListener;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lorg/codeaurora/ims/ImsPhoneStateListener;->unregister()V

    .line 97
    iget-object v4, p0, Lorg/codeaurora/ims/ImsPhoneListenerController;->mListeners:[Lorg/codeaurora/ims/ImsPhoneStateListener;

    const/4 v5, 0x0

    aput-object v5, v4, v3

    :cond_6
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 101
    :cond_7
    aget-object v3, v4, v2

    if-nez v3, :cond_2

    .line 102
    new-instance v3, Lorg/codeaurora/ims/ImsPhoneStateListener;

    iget-object v5, p0, Lorg/codeaurora/ims/ImsPhoneListenerController;->mContext:Landroid/content/Context;

    invoke-direct {v3, v5, v1, v2}, Lorg/codeaurora/ims/ImsPhoneStateListener;-><init>(Landroid/content/Context;II)V

    aput-object v3, v4, v2

    .line 103
    iget-object v1, p0, Lorg/codeaurora/ims/ImsPhoneListenerController;->mListeners:[Lorg/codeaurora/ims/ImsPhoneStateListener;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsPhoneStateListener;->register()V

    goto :goto_0

    .line 74
    :cond_8
    :goto_3
    const-string v0, "There is no ActiveSubscriptionInfo"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsPhoneListenerController;->logv(Ljava/lang/String;)V

    :cond_9
    :goto_4
    return-void
.end method


# virtual methods
.method public start()V
    .locals 1

    .line 33
    const-string v0, "start"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsPhoneListenerController;->logd(Ljava/lang/String;)V

    .line 34
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsPhoneListenerController;->registerForNotifications()V

    return-void
.end method

.method public stop()V
    .locals 1

    .line 38
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsPhoneListenerController;->unregisterForNotifications()V

    .line 39
    const-string v0, "stop"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsPhoneListenerController;->logd(Ljava/lang/String;)V

    return-void
.end method
