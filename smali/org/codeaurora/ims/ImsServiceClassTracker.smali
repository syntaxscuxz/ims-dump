.class public Lorg/codeaurora/ims/ImsServiceClassTracker;
.super Ljava/lang/Object;
.source "ImsServiceClassTracker.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/ims/ImsServiceClassTracker$VtDataUsageProvider;
    }
.end annotation


# static fields
.field public static final CONF_URI_DC_NUMBER:Ljava/lang/String; = "Conference Call"

.field public static final UID_VIDEO_RTP:I = -0xa

.field private static sToken:I = -0x1


# instance fields
.field private final EVENT_CLOSE_ALL_SESSIONS:I

.field private final EVENT_INCOMING_DTMF_START:I

.field private final EVENT_INCOMING_DTMF_STOP:I

.field private final EVENT_SRTP_ENCRYPTION_UPDATE:I

.field private mCallComposerCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/codeaurora/ims/CallComposerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCallDataUsageHandler:Landroid/os/Handler;

.field private final mCallList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/codeaurora/ims/ImsCallSessionImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mCallListListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/ICallListListener;",
            ">;"
        }
    .end annotation
.end field

.field private mCallListener:Lorg/codeaurora/ims/QImsSessionBase$ListenerBase;

.field private mCi:Lorg/codeaurora/ims/ImsSenderRxr;

.field private mContext:Landroid/content/Context;

.field private mEcnamInfoCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/codeaurora/ims/EcnamInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mIsVideoSupported:Z

.field private mIsVoiceSupported:Z

.field private final mPendingSessionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/codeaurora/ims/ImsCallSessionImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mPreAlertingCallTokenList:Landroid/util/SparseIntArray;

.field private mRemainingAlertQuota:J

.field private mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

.field private mSubscriptionManagerInstance:Landroid/telephony/SubscriptionManager;

.field private mUssdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/codeaurora/ims/ImsUssdSessionImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mUssdListener:Lorg/codeaurora/ims/QImsSessionBase$ListenerBase;

.field private volatile mVtDataUsageChanged:Ljava/lang/Boolean;

.field private final mVtDataUsageProvider:Lorg/codeaurora/ims/ImsServiceClassTracker$VtDataUsageProvider;

.field private volatile mVtDataUsageSnapshot:Landroid/net/NetworkStats;

.field private volatile mVtDataUsageUidSnapshot:Landroid/net/NetworkStats;


# direct methods
.method public static synthetic $r8$lambda$RF9if4zQDP-w8LzdVGfCMPoIsus(Lorg/codeaurora/ims/ImsServiceClassTracker;Lorg/codeaurora/ims/ImsCallSessionImpl;ZLjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/codeaurora/ims/ImsServiceClassTracker;->lambda$reportIncomingCall$2(Lorg/codeaurora/ims/ImsCallSessionImpl;ZLjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RaXrmLRRHpEj3p_acjEj5wJn9-s(Lorg/codeaurora/ims/ImsServiceClassTracker;Lorg/codeaurora/ims/ImsCallSessionImpl;Lorg/codeaurora/ims/QtiVideoCallDataUsage;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsServiceClassTracker;->lambda$onCallDataUsageChanged$6(Lorg/codeaurora/ims/ImsCallSessionImpl;Lorg/codeaurora/ims/QtiVideoCallDataUsage;)V

    return-void
.end method

.method public static synthetic $r8$lambda$axf-sXissO5l6_OvepQNIzWIrKM(Lorg/codeaurora/ims/ImsServiceClassTracker;Ljava/util/concurrent/CompletableFuture;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->lambda$reportIncomingCall$3(Ljava/util/concurrent/CompletableFuture;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kOqT6l_PtanvqrU0U2aJx7B7DNE(Lorg/codeaurora/ims/ImsServiceClassTracker;Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->lambda$handlePreFiltering$4(Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmCallDataUsageHandler(Lorg/codeaurora/ims/ImsServiceClassTracker;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallDataUsageHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCallList(Lorg/codeaurora/ims/ImsServiceClassTracker;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVtDataUsageChanged(Lorg/codeaurora/ims/ImsServiceClassTracker;)Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mVtDataUsageChanged:Ljava/lang/Boolean;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVtDataUsageProvider(Lorg/codeaurora/ims/ImsServiceClassTracker;)Lorg/codeaurora/ims/ImsServiceClassTracker$VtDataUsageProvider;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mVtDataUsageProvider:Lorg/codeaurora/ims/ImsServiceClassTracker$VtDataUsageProvider;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVtDataUsageSnapshot(Lorg/codeaurora/ims/ImsServiceClassTracker;)Landroid/net/NetworkStats;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mVtDataUsageSnapshot:Landroid/net/NetworkStats;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVtDataUsageUidSnapshot(Lorg/codeaurora/ims/ImsServiceClassTracker;)Landroid/net/NetworkStats;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mVtDataUsageUidSnapshot:Landroid/net/NetworkStats;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmVtDataUsageChanged(Lorg/codeaurora/ims/ImsServiceClassTracker;Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mVtDataUsageChanged:Ljava/lang/Boolean;

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetTotalBytesInNetworkStats(Lorg/codeaurora/ims/ImsServiceClassTracker;Landroid/net/NetworkStats;)J
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->getTotalBytesInNetworkStats(Landroid/net/NetworkStats;)J

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic -$$Nest$mupdateAlertQuota(Lorg/codeaurora/ims/ImsServiceClassTracker;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsServiceClassTracker;->updateAlertQuota(J)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lorg/codeaurora/ims/ImsSenderRxr;Landroid/content/Context;Lorg/codeaurora/ims/ImsServiceSub;)V
    .locals 1

    .line 138
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/codeaurora/ims/ImsServiceClassTracker;-><init>(Lorg/codeaurora/ims/ImsSenderRxr;Landroid/content/Context;Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/Looper;)V

    return-void
.end method

.method public constructor <init>(Lorg/codeaurora/ims/ImsSenderRxr;Landroid/content/Context;Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/Looper;)V
    .locals 7

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 103
    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    const/4 v1, 0x0

    .line 106
    iput-boolean v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mIsVideoSupported:Z

    .line 107
    iput-boolean v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mIsVoiceSupported:Z

    const/4 v2, 0x1

    .line 115
    iput v2, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->EVENT_INCOMING_DTMF_START:I

    const/4 v3, 0x2

    .line 116
    iput v3, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->EVENT_INCOMING_DTMF_STOP:I

    const/4 v4, 0x3

    .line 117
    iput v4, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->EVENT_CLOSE_ALL_SESSIONS:I

    const/4 v4, 0x4

    .line 118
    iput v4, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->EVENT_SRTP_ENCRYPTION_UPDATE:I

    .line 120
    new-instance v5, Lorg/codeaurora/ims/ImsServiceClassTracker$1;

    invoke-direct {v5, p0}, Lorg/codeaurora/ims/ImsServiceClassTracker$1;-><init>(Lorg/codeaurora/ims/ImsServiceClassTracker;)V

    iput-object v5, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallListener:Lorg/codeaurora/ims/QImsSessionBase$ListenerBase;

    .line 127
    new-instance v5, Lorg/codeaurora/ims/ImsServiceClassTracker$2;

    invoke-direct {v5, p0}, Lorg/codeaurora/ims/ImsServiceClassTracker$2;-><init>(Lorg/codeaurora/ims/ImsServiceClassTracker;)V

    iput-object v5, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mUssdListener:Lorg/codeaurora/ims/QImsSessionBase$ListenerBase;

    .line 1297
    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mVtDataUsageSnapshot:Landroid/net/NetworkStats;

    .line 1298
    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mVtDataUsageUidSnapshot:Landroid/net/NetworkStats;

    .line 1299
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mVtDataUsageChanged:Ljava/lang/Boolean;

    const-wide/16 v5, -0x1

    .line 1300
    iput-wide v5, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mRemainingAlertQuota:J

    .line 1302
    new-instance v1, Lorg/codeaurora/ims/ImsServiceClassTracker$VtDataUsageProvider;

    invoke-direct {v1, p0}, Lorg/codeaurora/ims/ImsServiceClassTracker$VtDataUsageProvider;-><init>(Lorg/codeaurora/ims/ImsServiceClassTracker;)V

    iput-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mVtDataUsageProvider:Lorg/codeaurora/ims/ImsServiceClassTracker$VtDataUsageProvider;

    .line 145
    iput-object p1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 146
    iput-object p2, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mContext:Landroid/content/Context;

    .line 147
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    .line 148
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mPendingSessionList:Ljava/util/ArrayList;

    .line 149
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mUssdList:Ljava/util/ArrayList;

    .line 150
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallListListeners:Ljava/util/List;

    .line 151
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mPreAlertingCallTokenList:Landroid/util/SparseIntArray;

    .line 152
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallComposerCache:Ljava/util/Map;

    .line 153
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mEcnamInfoCache:Ljava/util/Map;

    .line 154
    iput-object p3, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    .line 156
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    .line 157
    new-instance p3, Landroid/net/NetworkStats;

    invoke-direct {p3, p1, p2, v2}, Landroid/net/NetworkStats;-><init>(JI)V

    iput-object p3, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mVtDataUsageSnapshot:Landroid/net/NetworkStats;

    .line 158
    new-instance p3, Landroid/net/NetworkStats;

    invoke-direct {p3, p1, p2, v2}, Landroid/net/NetworkStats;-><init>(JI)V

    iput-object p3, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mVtDataUsageUidSnapshot:Landroid/net/NetworkStats;

    .line 159
    iget-object p1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mContext:Landroid/content/Context;

    const-string p2, "netstats"

    .line 160
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/usage/NetworkStatsManager;

    .line 162
    const-string p2, "ImsServiceClassTracker"

    invoke-virtual {p1, p2, v1}, Landroid/app/usage/NetworkStatsManager;->registerNetworkStatsProvider(Ljava/lang/String;Landroid/net/netstats/provider/NetworkStatsProvider;)V

    .line 163
    new-instance p1, Landroid/os/Handler;

    iget-object p2, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallDataUsageHandler:Landroid/os/Handler;

    .line 166
    iget-object p1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mContext:Landroid/content/Context;

    const-string p2, "telephony_subscription_service"

    .line 167
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/SubscriptionManager;

    iput-object p1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mSubscriptionManagerInstance:Landroid/telephony/SubscriptionManager;

    .line 169
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p4, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mHandler:Landroid/os/Handler;

    .line 170
    iget-object p2, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-virtual {p2, p1, v2, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForIncomingDtmfStart(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 171
    iget-object p1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object p2, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, p2, v3, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForIncomingDtmfStop(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 172
    iget-object p1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object p0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, p0, v4, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForSrtpEncryptionUpdate(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method private addCall(Ljava/lang/Integer;Lorg/codeaurora/ims/ImsCallSessionImpl;Z)V
    .locals 1

    .line 889
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_0

    .line 891
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsServiceClassTracker;->notifyCallAdded(Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    :cond_0
    return-void
.end method

.method private broadcastPreAlertingCallIntent(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1101
    invoke-direct {p0, v0, p1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->broadcastPreAlertingCallIntent(Lorg/codeaurora/ims/PreAlertingCallInfo;I)V

    return-void
.end method

.method private broadcastPreAlertingCallIntent(Lorg/codeaurora/ims/PreAlertingCallInfo;I)V
    .locals 2

    .line 1105
    new-instance v0, Landroid/content/Intent;

    const-string v1, "org.codeaurora.intent.action.PRE_ALERTING_CALL_INFO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1106
    sget-object v1, Lorg/codeaurora/ims/QtiCallConstants;->EXTRA_PRE_ALERTING_CALL_TOKEN:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1107
    const-string p2, "pre_alerting_call_phoneId"

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-nez p1, :cond_0

    .line 1110
    const-string p1, "broadcastPreAlertingCallIntent for end state"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1111
    sget-object p1, Lorg/codeaurora/ims/QtiCallConstants;->EXTRA_PRE_ALERTING_CALL_ENDED:Ljava/lang/String;

    const/4 p2, 0x1

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1

    .line 1114
    :cond_0
    invoke-virtual {p1}, Lorg/codeaurora/ims/PreAlertingCallInfo;->getCallComposerInfo()Lorg/codeaurora/ims/CallComposerInfo;

    move-result-object p2

    invoke-static {p2}, Lorg/codeaurora/ims/utils/CallComposerInfoUtils;->toBundle(Lorg/codeaurora/ims/CallComposerInfo;)Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 1116
    sget-object v1, Lorg/codeaurora/ims/QtiCallConstants;->EXTRA_CALL_COMPOSER_INFO:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1120
    :cond_1
    invoke-virtual {p1}, Lorg/codeaurora/ims/PreAlertingCallInfo;->getEcnamInfo()Lorg/codeaurora/ims/EcnamInfo;

    move-result-object p2

    if-nez p2, :cond_2

    const/4 p2, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lorg/codeaurora/ims/PreAlertingCallInfo;->getEcnamInfo()Lorg/codeaurora/ims/EcnamInfo;

    move-result-object p2

    invoke-virtual {p2}, Lorg/codeaurora/ims/EcnamInfo;->toBundle()Landroid/os/Bundle;

    move-result-object p2

    :goto_0
    if-eqz p2, :cond_3

    .line 1122
    sget-object v1, Lorg/codeaurora/ims/QtiCallConstants;->EXTRA_CALL_ECNAM:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1124
    :cond_3
    const-string p2, "modemCallId"

    .line 1125
    invoke-virtual {p1}, Lorg/codeaurora/ims/PreAlertingCallInfo;->getModemCallId()I

    move-result v1

    .line 1124
    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1126
    const-string p2, "isDcCall"

    invoke-virtual {p1}, Lorg/codeaurora/ims/PreAlertingCallInfo;->getIsDcCall()Z

    move-result p1

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1129
    :goto_1
    iget-object p0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mContext:Landroid/content/Context;

    const-string p1, "com.qti.permission.RECEIVE_PRE_ALERTING_CALL_INFO"

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method private createCallSession(Landroid/telephony/ims/ImsCallProfile;)Lorg/codeaurora/ims/QImsSessionBase;
    .locals 8

    .line 545
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionImpl;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v3, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mContext:Landroid/content/Context;

    iget-boolean v5, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mIsVideoSupported:Z

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    .line 546
    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsServiceSub;->getPhoneId()I

    move-result v6

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    .line 547
    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsServiceSub;->getImsConferenceController()Lorg/codeaurora/ims/ImsConferenceController;

    move-result-object v7

    move-object v4, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lorg/codeaurora/ims/ImsCallSessionImpl;-><init>(Landroid/telephony/ims/ImsCallProfile;Lorg/codeaurora/ims/ImsSenderRxr;Landroid/content/Context;Lorg/codeaurora/ims/ImsServiceClassTracker;ZILorg/codeaurora/ims/ImsConferenceController;)V

    .line 548
    iget-object p0, v4, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallListener:Lorg/codeaurora/ims/QImsSessionBase$ListenerBase;

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->addListener(Lorg/codeaurora/ims/QImsSessionBase$Listener;)V

    .line 549
    iget-boolean p0, v4, Lorg/codeaurora/ims/ImsServiceClassTracker;->mIsVideoSupported:Z

    iget-boolean p1, v4, Lorg/codeaurora/ims/ImsServiceClassTracker;->mIsVoiceSupported:Z

    invoke-virtual {v0, p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->updateFeatureCapabilities(ZZ)V

    .line 550
    iget-object p0, v4, Lorg/codeaurora/ims/ImsServiceClassTracker;->mPendingSessionList:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 551
    invoke-direct {v4, v0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->notifyCallAdded(Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    return-object v0
.end method

.method private createIncomingCallBundle(ZZ)Landroid/os/Bundle;
    .locals 1

    .line 201
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 202
    const-string v0, "android.telephony.ims.feature.extra.IS_USSD"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 203
    const-string p1, "android.telephony.ims.feature.extra.IS_UNKNOWN_CALL"

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method

.method private createUssdSession(Landroid/telephony/ims/ImsCallProfile;Lorg/codeaurora/ims/UssdInfo;)Lorg/codeaurora/ims/QImsSessionBase;
    .locals 7

    .line 556
    new-instance v0, Lorg/codeaurora/ims/ImsUssdSessionImpl;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    .line 557
    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsServiceSub;->getPhoneId()I

    move-result v4

    move-object v5, p0

    move-object v1, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lorg/codeaurora/ims/ImsUssdSessionImpl;-><init>(Landroid/telephony/ims/ImsCallProfile;Landroid/content/Context;Lorg/codeaurora/ims/ImsSenderRxr;ILorg/codeaurora/ims/ImsServiceClassTracker;Lorg/codeaurora/ims/UssdInfo;)V

    .line 558
    iget-object p0, v5, Lorg/codeaurora/ims/ImsServiceClassTracker;->mUssdListener:Lorg/codeaurora/ims/QImsSessionBase$ListenerBase;

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsUssdSessionImpl;->addListener(Lorg/codeaurora/ims/QImsSessionBase$Listener;)V

    .line 559
    iget-boolean p0, v5, Lorg/codeaurora/ims/ImsServiceClassTracker;->mIsVideoSupported:Z

    iget-boolean p1, v5, Lorg/codeaurora/ims/ImsServiceClassTracker;->mIsVoiceSupported:Z

    invoke-virtual {v0, p0, p1}, Lorg/codeaurora/ims/ImsUssdSessionImpl;->updateFeatureCapabilities(ZZ)V

    .line 560
    iget-object p0, v5, Lorg/codeaurora/ims/ImsServiceClassTracker;->mUssdList:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 561
    invoke-direct {v5, v0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->notifyUssdAdded(Lorg/codeaurora/ims/ImsUssdSessionImpl;)V

    return-object v0
.end method

.method private extractErrorCode(Ljava/lang/String;)I
    .locals 2

    .line 1225
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return v0

    .line 1229
    :cond_0
    const-string p0, "[0-9]+"

    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p0

    .line 1230
    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 1231
    :cond_1
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1232
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object p1

    .line 1233
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1234
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_2
    return v0
.end method

.method private getCachedCallComposerInfo(I)Lorg/codeaurora/ims/CallComposerInfo;
    .locals 1

    .line 1070
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mPreAlertingCallTokenList:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 1072
    iget-object p0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallComposerCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/codeaurora/ims/CallComposerInfo;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getCachedEcnamInfo(I)Lorg/codeaurora/ims/EcnamInfo;
    .locals 1

    .line 1080
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mPreAlertingCallTokenList:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 1082
    iget-object p0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mEcnamInfoCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/codeaurora/ims/EcnamInfo;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getSubscriptionId(I)I
    .locals 0

    .line 1452
    iget-object p0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mSubscriptionManagerInstance:Landroid/telephony/SubscriptionManager;

    .line 1453
    invoke-virtual {p0, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 1455
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p0

    return p0
.end method

.method private static getToken()I
    .locals 2

    .line 1049
    sget v0, Lorg/codeaurora/ims/ImsServiceClassTracker;->sToken:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    :goto_0
    sput v0, Lorg/codeaurora/ims/ImsServiceClassTracker;->sToken:I

    return v0
.end method

.method private getTotalBytesInNetworkStats(Landroid/net/NetworkStats;)J
    .locals 6

    .line 1441
    invoke-virtual {p1}, Landroid/net/NetworkStats;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-wide/16 v0, 0x0

    .line 1443
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1444
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/NetworkStats$Entry;

    .line 1445
    invoke-virtual {p1}, Landroid/net/NetworkStats$Entry;->getRxBytes()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/net/NetworkStats$Entry;->getTxBytes()J

    move-result-wide v4

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method private getVtInterface()Ljava/lang/String;
    .locals 2

    .line 1458
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "vt_data0"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    iget v1, v1, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->getSubscriptionId(I)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private handleCloseAllSessions()V
    .locals 3

    .line 1193
    const-string v0, "handleCloseAllSessions"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1194
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "call list"

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2, v1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->removeAndNotifySessions(Ljava/util/Collection;ZLjava/lang/String;)V

    .line 1196
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mPendingSessionList:Ljava/util/ArrayList;

    const-string v1, "pending call list"

    invoke-direct {p0, v0, v2, v1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->removeAndNotifySessions(Ljava/util/Collection;ZLjava/lang/String;)V

    .line 1198
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mUssdList:Ljava/util/ArrayList;

    const-string v1, "ussd list"

    invoke-direct {p0, v0, v2, v1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->removeAndNotifySessions(Ljava/util/Collection;ZLjava/lang/String;)V

    return-void
.end method

.method private handleIncomingDtmf(Lorg/codeaurora/telephony/utils/AsyncResult;Z)V
    .locals 2

    if-eqz p1, :cond_3

    .line 1163
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1167
    :cond_0
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/telephony/utils/SomeArgs;

    .line 1168
    iget-object p1, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz p1, :cond_1

    .line 1169
    const-string p1, "handleIncomingDtmf ar.exception not null"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1170
    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/SomeArgs;->recycle()V

    return-void

    .line 1173
    :cond_1
    iget-object p1, v0, Lorg/codeaurora/telephony/utils/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 1174
    iget v1, v0, Lorg/codeaurora/telephony/utils/SomeArgs;->argi1:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->getCallSession(Ljava/lang/String;)Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object v1

    if-nez v1, :cond_2

    .line 1176
    const-string p1, "handleIncomingDtmf Error: callSession is null"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 1179
    :cond_2
    invoke-virtual {v1, p2, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->notifyIncomingDtmf(ZLjava/lang/String;)V

    .line 1180
    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/SomeArgs;->recycle()V

    return-void

    .line 1164
    :cond_3
    :goto_0
    const-string p1, "handleIncomingDtmf exception"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private handlePreFiltering(Lorg/codeaurora/ims/ImsCallSessionImpl;)Ljava/util/concurrent/CompletableFuture;
    .locals 3

    .line 939
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 941
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "config_vzw_call_filter_package:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 943
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, v0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->isPackageEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 947
    :cond_0
    new-instance v0, Lorg/codeaurora/ims/ImsServiceClassTracker$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lorg/codeaurora/ims/ImsServiceClassTracker$$ExternalSyntheticLambda0;-><init>(Lorg/codeaurora/ims/ImsServiceClassTracker;Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    invoke-static {v0}, Ljava/util/concurrent/CompletableFuture;->runAsync(Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 944
    invoke-static {p0}, Ljava/util/concurrent/CompletableFuture;->completedFuture(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method private handleSrtpEncryptionInfo(Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 2

    if-eqz p1, :cond_3

    .line 1202
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1206
    :cond_0
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_1

    .line 1207
    const-string p1, "handleSrtpEncryptionInfo ar.exception not null"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 1210
    :cond_1
    iget-object p1, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lorg/codeaurora/telephony/utils/SomeArgs;

    .line 1211
    iget v0, p1, Lorg/codeaurora/telephony/utils/SomeArgs;->argi1:I

    .line 1212
    iget v1, p1, Lorg/codeaurora/telephony/utils/SomeArgs;->argi2:I

    .line 1213
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->getCallSession(Ljava/lang/String;)Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1215
    const-string v0, "handleSrtpEncryptionInfo Error: callSession is not found"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1216
    invoke-virtual {p1}, Lorg/codeaurora/telephony/utils/SomeArgs;->recycle()V

    return-void

    .line 1219
    :cond_2
    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->notifySrtpEncryptionUpdate(I)V

    .line 1220
    invoke-virtual {p1}, Lorg/codeaurora/telephony/utils/SomeArgs;->recycle()V

    return-void

    .line 1203
    :cond_3
    :goto_0
    const-string p1, " handleSrtpEncryptionInfo exception"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private insertSipInvite(Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    .locals 6

    const-string v0, "SIP Invite insert result URI: "

    .line 965
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    return-void

    .line 967
    :cond_0
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object p1

    const-string v1, "AdditionalCallInfo"

    invoke-virtual {p1, v1}, Landroid/telephony/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 968
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 971
    :try_start_0
    const-string v1, "Content-Length: [0-9]+"

    const-string v2, "Content-Length: 0"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_2

    .line 982
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 983
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 984
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 986
    :try_start_1
    const-string v3, "sipmessage"

    new-instance v4, Ljava/lang/String;

    const-string v5, "ISO-8859-1"

    invoke-direct {v4, p1, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 993
    :try_start_2
    const-string p1, "content://com.cequint.ecid/lookup"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 994
    invoke-virtual {v1, p1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_1

    .line 996
    const-string p1, "returnUri is NULL "

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 998
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1001
    const-string v0, "Exception during insert"

    invoke-static {p0, v0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;)V

    return-void

    :catch_1
    move-exception p1

    .line 988
    const-string v0, "UnsupportedEncodingException to ISO-8859-1 "

    invoke-static {p0, v0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;)V

    return-void

    :catch_2
    move-exception p1

    .line 973
    const-string v0, "Exception in replacing Content Length to 0"

    invoke-static {p0, v0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;)V

    return-void

    .line 977
    :cond_2
    const-string p1, "SIP Msg is Empty"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private isPackageEnabled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    .line 954
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 955
    invoke-virtual {p1, p2, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    .line 956
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " info.enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 957
    iget-boolean p0, p1, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 959
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Not found app: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return v0
.end method

.method private static isSrvcc(Lorg/codeaurora/ims/HoInfo;)Z
    .locals 2

    .line 759
    invoke-virtual {p0}, Lorg/codeaurora/ims/HoInfo;->getSrcTech()I

    move-result v0

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 760
    invoke-virtual {p0}, Lorg/codeaurora/ims/HoInfo;->getTargetTech()I

    move-result p0

    if-ne p0, v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic lambda$getMergeCallList$5(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I
    .locals 0

    .line 1274
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private synthetic lambda$handlePreFiltering$4(Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    .locals 0

    .line 948
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->insertSipInvite(Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    return-void
.end method

.method static synthetic lambda$notifyUssdAdded$0(Lorg/codeaurora/ims/ImsUssdSessionImpl;Lorg/codeaurora/ims/ICallListListener;)V
    .locals 0

    .line 903
    invoke-interface {p1, p0}, Lorg/codeaurora/ims/ICallListListener;->onSessionAdded(Lorg/codeaurora/ims/ImsUssdSessionImpl;)V

    return-void
.end method

.method static synthetic lambda$notifyUssdRemoved$1(Lorg/codeaurora/ims/ImsUssdSessionImpl;Lorg/codeaurora/ims/ICallListListener;)V
    .locals 0

    .line 909
    invoke-interface {p1, p0}, Lorg/codeaurora/ims/ICallListListener;->onSessionRemoved(Lorg/codeaurora/ims/ImsUssdSessionImpl;)V

    return-void
.end method

.method private synthetic lambda$onCallDataUsageChanged$6(Lorg/codeaurora/ims/ImsCallSessionImpl;Lorg/codeaurora/ims/QtiVideoCallDataUsage;)V
    .locals 0

    .line 1377
    invoke-virtual {p0, p1, p2}, Lorg/codeaurora/ims/ImsServiceClassTracker;->handleCallDataUsageChanged(Lorg/codeaurora/ims/ImsCallSessionImpl;Lorg/codeaurora/ims/QtiVideoCallDataUsage;)V

    return-void
.end method

.method private synthetic lambda$reportIncomingCall$2(Lorg/codeaurora/ims/ImsCallSessionImpl;ZLjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 919
    const-string p3, "preFilteringFuture complete"

    invoke-static {p0, p3}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 920
    iget-object p3, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    const/4 p4, 0x0

    .line 921
    invoke-direct {p0, p4, p2}, Lorg/codeaurora/ims/ImsServiceClassTracker;->createIncomingCallBundle(ZZ)Landroid/os/Bundle;

    move-result-object p0

    .line 920
    invoke-virtual {p3, p1, p0}, Lorg/codeaurora/ims/ImsServiceSub;->handleNotifyIncomingCall(Landroid/telephony/ims/stub/ImsCallSessionImplBase;Landroid/os/Bundle;)V

    return-void
.end method

.method private synthetic lambda$reportIncomingCall$3(Ljava/util/concurrent/CompletableFuture;)V
    .locals 1

    .line 924
    invoke-virtual {p1}, Ljava/util/concurrent/CompletableFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 925
    const-string v0, "preFilteringFuture timeout"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 928
    invoke-virtual {p1, p0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-void

    .line 930
    :cond_0
    const-string p1, "preFilteringFuture completed successfully"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private maybeBroadcastPreAlertingCallIntent(I)V
    .locals 2

    .line 1090
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mPreAlertingCallTokenList:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 1092
    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->broadcastPreAlertingCallIntent(I)V

    .line 1093
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mPreAlertingCallTokenList:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 1094
    iget-object p1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallComposerCache:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1095
    iget-object p0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mEcnamInfoCache:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private maybeDisableVideo(Lorg/codeaurora/ims/DriverCallIms;Z)Lorg/codeaurora/ims/DriverCallIms;
    .locals 5

    if-eqz p2, :cond_3

    if-eqz p1, :cond_3

    .line 438
    iget-object p0, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    if-eqz p0, :cond_3

    iget-object p0, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object p0, p0, Lorg/codeaurora/ims/CallDetails;->localAbility:[Lorg/codeaurora/ims/ServiceStatus;

    if-nez p0, :cond_0

    goto :goto_1

    .line 443
    :cond_0
    iget-object p0, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object p0, p0, Lorg/codeaurora/ims/CallDetails;->localAbility:[Lorg/codeaurora/ims/ServiceStatus;

    const/4 v0, 0x3

    invoke-static {v0, p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isServiceAllowed(I[Lorg/codeaurora/ims/ServiceStatus;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    if-ne p0, p2, :cond_1

    goto :goto_1

    .line 449
    :cond_1
    iget-object p0, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object p0, p0, Lorg/codeaurora/ims/CallDetails;->localAbility:[Lorg/codeaurora/ims/ServiceStatus;

    array-length p2, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p2, :cond_3

    aget-object v3, p0, v2

    .line 450
    iget v4, v3, Lorg/codeaurora/ims/ServiceStatus;->type:I

    if-ne v4, v0, :cond_2

    .line 451
    iput v1, v3, Lorg/codeaurora/ims/ServiceStatus;->status:I

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-object p1
.end method

.method private notifyCallAdded(Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    .locals 1

    .line 883
    iget-object p0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallListListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ICallListListener;

    .line 884
    invoke-interface {v0, p1}, Lorg/codeaurora/ims/ICallListListener;->onSessionAdded(Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyCallRemoved(Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    .locals 1

    .line 896
    iget-object p0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallListListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ICallListListener;

    .line 897
    invoke-interface {v0, p1}, Lorg/codeaurora/ims/ICallListListener;->onSessionRemoved(Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyUssdAdded(Lorg/codeaurora/ims/ImsUssdSessionImpl;)V
    .locals 1

    .line 902
    iget-object p0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallListListeners:Ljava/util/List;

    new-instance v0, Lorg/codeaurora/ims/ImsServiceClassTracker$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1}, Lorg/codeaurora/ims/ImsServiceClassTracker$$ExternalSyntheticLambda4;-><init>(Lorg/codeaurora/ims/ImsUssdSessionImpl;)V

    invoke-interface {p0, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private notifyUssdRemoved(Lorg/codeaurora/ims/ImsUssdSessionImpl;)V
    .locals 1

    .line 908
    iget-object p0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallListListeners:Ljava/util/List;

    new-instance v0, Lorg/codeaurora/ims/ImsServiceClassTracker$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Lorg/codeaurora/ims/ImsServiceClassTracker$$ExternalSyntheticLambda3;-><init>(Lorg/codeaurora/ims/ImsUssdSessionImpl;)V

    invoke-interface {p0, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private parsePhoneNumbers([Ljava/lang/String;)V
    .locals 4

    if-nez p1, :cond_0

    .line 584
    const-string p1, "parsePhoneNumbers: History is null."

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 588
    :cond_0
    const-string v0, "(.*?)(\\+?\\d+)(.*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    const/4 v1, 0x0

    .line 589
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 590
    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 591
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x2

    .line 592
    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v1

    goto :goto_1

    .line 594
    :cond_1
    const-string v2, ""

    aput-object v2, p1, v1

    .line 595
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "parsePhoneNumbers: string format incorrect"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private removeAndNotifySessions(Ljava/util/Collection;ZLjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lorg/codeaurora/ims/QImsSessionBase;",
            ">;Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-nez p1, :cond_0

    goto :goto_1

    .line 478
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 479
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/QImsSessionBase;

    .line 480
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "removeAndNotifySessions : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_2

    const/16 v1, 0x67

    .line 482
    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/QImsSessionBase;->terminate(I)V

    .line 483
    invoke-virtual {v0}, Lorg/codeaurora/ims/QImsSessionBase;->close()V

    .line 485
    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    .line 486
    instance-of v1, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;

    if-eqz v1, :cond_3

    .line 487
    check-cast v0, Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->notifyCallRemoved(Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    goto :goto_0

    .line 488
    :cond_3
    instance-of v1, v0, Lorg/codeaurora/ims/ImsUssdSessionImpl;

    if-eqz v1, :cond_1

    .line 489
    check-cast v0, Lorg/codeaurora/ims/ImsUssdSessionImpl;

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->notifyUssdRemoved(Lorg/codeaurora/ims/ImsUssdSessionImpl;)V

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method private removeCallSessionsAfterSrvcc()V
    .locals 3

    .line 495
    const-string v0, "removeCallSessionsAfterSrvcc"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 498
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "call list"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->removeAndNotifySessions(Ljava/util/Collection;ZLjava/lang/String;)V

    .line 501
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mPendingSessionList:Ljava/util/ArrayList;

    const-string v1, "pending list"

    invoke-direct {p0, v0, v2, v1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->removeAndNotifySessions(Ljava/util/Collection;ZLjava/lang/String;)V

    return-void
.end method

.method private sendBroadcastForDisconnected(Landroid/telephony/ims/ImsReasonInfo;II)V
    .locals 2

    .line 1245
    iget-object v0, p1, Landroid/telephony/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/telephony/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1249
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.imsconnection.DISCONNECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x1000000

    .line 1250
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 1251
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1252
    const-string v1, "result"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1253
    const-string v1, "stateChanged"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1254
    const-string p2, "imsRat"

    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1255
    iget-object p2, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {p2}, Lorg/codeaurora/ims/ImsServiceSub;->getPhoneId()I

    move-result p2

    invoke-static {v0, p2}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 1256
    iget-object p2, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p2, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1257
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "sendBroadcastForDisconnected: imsRat "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", ImsReasonInfo: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 1246
    :cond_1
    :goto_0
    const-string p1, "Error msg is null or empty, ignore!"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private sendEpsfbBroadcastToEcholocate()V
    .locals 2

    .line 1263
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.motorola.intent.action.ECHOLOCATE_EPSFB_SUCCESSFUL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x1000000

    .line 1264
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1265
    iget-object p0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method private shallDisableVideo(Ljava/util/ArrayList;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/codeaurora/ims/DriverCallIms;",
            ">;)Z"
        }
    .end annotation

    .line 416
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->getPhoneId()I

    move-result v0

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->canHoldVideoCall(ILandroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 424
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, v1

    move v3, v2

    :cond_1
    :goto_0
    if-ge v3, v0, :cond_3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lorg/codeaurora/ims/DriverCallIms;

    .line 425
    iget-object v5, v4, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v6, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v5, v6, :cond_2

    iget-object v5, v4, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v6, Lorg/codeaurora/ims/DriverCallIms$State;->HOLDING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v5, v6, :cond_1

    :cond_2
    iget-object v4, v4, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v4, v4, Lorg/codeaurora/ims/CallDetails;->call_type:I

    .line 427
    invoke-static {v4}, Lorg/codeaurora/ims/ImsCallUtils;->isVoiceCall(I)Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    if-gt v2, p1, :cond_5

    .line 432
    iget-object p0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    .line 433
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsServiceSub;->getImsConferenceController()Lorg/codeaurora/ims/ImsConferenceController;

    move-result-object p0

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsConferenceController;->isInProgress()Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_1

    :cond_4
    return v1

    :cond_5
    :goto_1
    return p1
.end method

.method private updateAlertQuota(J)V
    .locals 3

    .line 1363
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "updateAlertQuota:newQuota="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",Remaining="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mRemainingAlertQuota:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-ltz v0, :cond_2

    .line 1367
    iget-wide v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mRemainingAlertQuota:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 1368
    :cond_0
    iput-wide p1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mRemainingAlertQuota:J

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-nez p1, :cond_1

    .line 1370
    const-string p1, "onAlertReached"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1373
    iget-object p0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mVtDataUsageProvider:Lorg/codeaurora/ims/ImsServiceClassTracker$VtDataUsageProvider;

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsServiceClassTracker$VtDataUsageProvider;->notifyAlertReached()V

    :cond_1
    :goto_0
    return-void

    .line 1365
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "invalid quota value "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method addListener(Lorg/codeaurora/ims/ICallListListener;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 855
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallListListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 856
    iget-object p0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallListListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 858
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "addListener: Listener already added, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 850
    :cond_1
    const-string p0, "addListener error: listener is null."

    invoke-static {p0}, Lorg/codeaurora/ims/ImsServiceSub$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    return-void
.end method

.method public closeAllSessions()V
    .locals 1

    .line 1189
    iget-object p0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public createCallSession(Landroid/telephony/ims/ImsCallProfile;Lorg/codeaurora/ims/UssdInfo;)Landroid/telephony/ims/stub/ImsCallSessionImplBase;
    .locals 2

    .line 537
    const-string v0, "dialstring"

    invoke-virtual {p1, v0}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 540
    :cond_0
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->createCallSession(Landroid/telephony/ims/ImsCallProfile;)Lorg/codeaurora/ims/QImsSessionBase;

    move-result-object p0

    return-object p0

    .line 539
    :cond_1
    :goto_0
    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsServiceClassTracker;->createUssdSession(Landroid/telephony/ims/ImsCallProfile;Lorg/codeaurora/ims/UssdInfo;)Lorg/codeaurora/ims/QImsSessionBase;

    move-result-object p0

    return-object p0
.end method

.method public findSessionByMediaId(I)Lorg/codeaurora/ims/ImsCallSessionImpl;
    .locals 2

    .line 723
    iget-object p0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 724
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 725
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getMediaId()I

    move-result v1

    if-ne v1, p1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCallCount()I
    .locals 0

    .line 181
    iget-object p0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    return p0
.end method

.method public getCallSession(Ljava/lang/String;)Lorg/codeaurora/ims/ImsCallSessionImpl;
    .locals 0

    .line 572
    iget-object p0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/codeaurora/ims/ImsCallSessionImpl;

    return-object p0
.end method

.method public getCallSessionByState(Lorg/codeaurora/ims/DriverCallIms$State;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codeaurora/ims/DriverCallIms$State;",
            ")",
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/ImsCallSessionImpl;",
            ">;"
        }
    .end annotation

    .line 699
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_0

    goto :goto_2

    .line 702
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mPendingSessionList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :cond_1
    :goto_0
    if-ge v3, v2, :cond_2

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 703
    invoke-virtual {v4}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalState()Lorg/codeaurora/ims/DriverCallIms$State;

    move-result-object v5

    if-ne v5, p1, :cond_1

    .line 704
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 708
    :cond_2
    iget-object p0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 709
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 710
    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalState()Lorg/codeaurora/ims/DriverCallIms$State;

    move-result-object v2

    if-ne v2, p1, :cond_3

    .line 711
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    :goto_2
    return-object v0
.end method

.method public getCallSessionByToken(I)Lorg/codeaurora/ims/ImsCallSessionImpl;
    .locals 6

    .line 738
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mPendingSessionList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 739
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mPendingSessionList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :cond_0
    if-ge v3, v2, :cond_1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 740
    invoke-virtual {v4}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getTokenId()I

    move-result v5

    if-ne v5, p1, :cond_0

    .line 741
    monitor-exit v0

    return-object v4

    .line 744
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 746
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    monitor-enter v1

    .line 747
    :try_start_1
    iget-object p0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 748
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 749
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getTokenId()I

    move-result v2

    if-ne v2, p1, :cond_2

    .line 750
    monitor-exit v1

    return-object v0

    .line 753
    :cond_3
    monitor-exit v1

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 744
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public getCallSessionWithMptyBitSet(I)Lorg/codeaurora/ims/ImsCallSessionImpl;
    .locals 5

    .line 661
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 662
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 663
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 664
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 665
    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getDriverCallState()Lorg/codeaurora/ims/DriverCallIms$State;

    move-result-object v2

    .line 666
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getCallSessionWithMptyBitSet:: ImsCallSession state = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 667
    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", isMultiparty = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isMultiparty()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 666
    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 669
    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isMultiparty()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 670
    const-string v3, "ImsCallSession found with Multiparty bit set"

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 671
    sget-object v3, Lorg/codeaurora/ims/DriverCallIms$State;->DIALING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v2, v3, :cond_1

    sget-object v3, Lorg/codeaurora/ims/DriverCallIms$State;->ALERTING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v2, v3, :cond_1

    sget-object v3, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v2, v3, :cond_2

    :cond_1
    if-ne p1, v4, :cond_2

    .line 675
    const-string p1, "Foreground Conference callSession found"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1

    .line 677
    :cond_2
    sget-object v3, Lorg/codeaurora/ims/DriverCallIms$State;->HOLDING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v2, v3, :cond_3

    const/4 v3, 0x2

    if-ne p1, v3, :cond_3

    .line 679
    const-string p1, "Background Conference callSession found"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1

    .line 681
    :cond_3
    sget-object v3, Lorg/codeaurora/ims/DriverCallIms$State;->INCOMING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v2, v3, :cond_4

    sget-object v3, Lorg/codeaurora/ims/DriverCallIms$State;->WAITING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v2, v3, :cond_0

    :cond_4
    if-nez p1, :cond_0

    .line 684
    const-string p1, "Ringing Conference callSession found"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1

    :cond_5
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCallsListToClear()Ljava/lang/Object;
    .locals 6

    .line 232
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    .line 233
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 235
    iget-object p0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    .line 236
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 237
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 238
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 239
    new-instance v3, Lorg/codeaurora/ims/DriverCallIms;

    invoke-direct {v3}, Lorg/codeaurora/ims/DriverCallIms;-><init>()V

    .line 240
    sget-object v4, Lorg/codeaurora/ims/DriverCallIms$State;->END:Lorg/codeaurora/ims/DriverCallIms$State;

    iput-object v4, v3, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    .line 241
    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallIdInt()I

    move-result v4

    iput v4, v3, Lorg/codeaurora/ims/DriverCallIms;->index:I

    .line 242
    new-instance v4, Lorg/codeaurora/ims/CallDetails;

    invoke-direct {v4}, Lorg/codeaurora/ims/CallDetails;-><init>()V

    iput-object v4, v3, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    .line 243
    iget-object v4, v3, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result v5

    iput v5, v4, Lorg/codeaurora/ims/CallDetails;->call_type:I

    .line 244
    iget-object v4, v3, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallDomain()I

    move-result v2

    iput v2, v4, Lorg/codeaurora/ims/CallDetails;->call_domain:I

    .line 245
    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v4, 0x83

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    iput-object v2, v3, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    .line 247
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 249
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v0

    :cond_1
    return-object v1
.end method

.method public getExecutor()Ljava/util/concurrent/Executor;
    .locals 0

    .line 1040
    iget-object p0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsServiceSub;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object p0

    return-object p0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 0

    .line 1185
    iget-object p0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public getMergeCallList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1271
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1272
    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1273
    new-instance p0, Lorg/codeaurora/ims/ImsServiceClassTracker$$ExternalSyntheticLambda5;

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsServiceClassTracker$$ExternalSyntheticLambda5;-><init>()V

    invoke-static {v1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1277
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-ge v2, p0, :cond_1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Ljava/util/Map$Entry;

    .line 1278
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v4}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isMultiparty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1279
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallAddress()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getPhoneId()I
    .locals 0

    .line 1036
    iget-object p0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsServiceSub;->getPhoneId()I

    move-result p0

    return p0
.end method

.method public getPreAlertingCallTokenList()Landroid/util/SparseIntArray;
    .locals 0

    .line 1045
    iget-object p0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mPreAlertingCallTokenList:Landroid/util/SparseIntArray;

    return-object p0
.end method

.method public getSelfUri()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 1286
    iget-object p0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsServiceSub;->getSelfIdentityUri()Ljava/util/HashSet;

    move-result-object p0

    return-object p0
.end method

.method public getUssdCount()I
    .locals 0

    .line 190
    iget-object p0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mUssdList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public handleCallDataUsageChanged(Lorg/codeaurora/ims/ImsCallSessionImpl;Lorg/codeaurora/ims/QtiVideoCallDataUsage;)V
    .locals 41

    move-object/from16 v0, p0

    .line 1381
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 1383
    new-instance v3, Landroid/net/NetworkStats;

    const/4 v4, 0x1

    invoke-direct {v3, v1, v2, v4}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 1384
    iget-object v5, v0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mVtDataUsageSnapshot:Landroid/net/NetworkStats;

    invoke-virtual {v3, v5}, Landroid/net/NetworkStats;->add(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v3

    .line 1386
    new-instance v5, Landroid/net/NetworkStats$Entry;

    .line 1387
    invoke-direct {v0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->getVtInterface()Ljava/lang/String;

    move-result-object v6

    .line 1390
    invoke-virtual/range {p2 .. p2}, Lorg/codeaurora/ims/QtiVideoCallDataUsage;->getLteRxDataUsage()J

    move-result-wide v13

    .line 1391
    invoke-virtual/range {p2 .. p2}, Lorg/codeaurora/ims/QtiVideoCallDataUsage;->getLteTxDataUsage()J

    move-result-wide v17

    const-wide/16 v19, 0x0

    const-wide/16 v21, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/16 v29, 0x0

    const/4 v12, 0x1

    const-wide/16 v15, 0x0

    move/from16 v11, v29

    invoke-direct/range {v5 .. v22}, Landroid/net/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIIIIJJJJJ)V

    .line 1392
    new-instance v23, Landroid/net/NetworkStats$Entry;

    const-string v24, "wlan0"

    .line 1396
    invoke-virtual/range {p2 .. p2}, Lorg/codeaurora/ims/QtiVideoCallDataUsage;->getWlanRxDataUsage()J

    move-result-wide v31

    .line 1397
    invoke-virtual/range {p2 .. p2}, Lorg/codeaurora/ims/QtiVideoCallDataUsage;->getWlanTxDataUsage()J

    move-result-wide v35

    const-wide/16 v37, 0x0

    const-wide/16 v39, 0x0

    const/16 v25, -0x1

    const/16 v26, 0x1

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v30, 0x1

    const-wide/16 v33, 0x0

    invoke-direct/range {v23 .. v40}, Landroid/net/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIIIIJJJJJ)V

    move-object/from16 v6, v23

    .line 1399
    invoke-virtual {v3, v5}, Landroid/net/NetworkStats;->addEntry(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    move-result-object v3

    .line 1400
    invoke-virtual {v3, v6}, Landroid/net/NetworkStats;->addEntry(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    move-result-object v3

    .line 1404
    new-instance v5, Landroid/net/NetworkStats;

    invoke-direct {v5, v1, v2, v4}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 1406
    iget-object v1, v0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mVtDataUsageUidSnapshot:Landroid/net/NetworkStats;

    invoke-virtual {v5, v1}, Landroid/net/NetworkStats;->add(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v1

    .line 1407
    new-instance v23, Landroid/net/NetworkStats$Entry;

    .line 1408
    invoke-direct {v0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->getVtInterface()Ljava/lang/String;

    move-result-object v24

    .line 1411
    invoke-virtual/range {p2 .. p2}, Lorg/codeaurora/ims/QtiVideoCallDataUsage;->getLteRxDataUsage()J

    move-result-wide v31

    .line 1412
    invoke-virtual/range {p2 .. p2}, Lorg/codeaurora/ims/QtiVideoCallDataUsage;->getLteTxDataUsage()J

    move-result-wide v35

    const/16 v25, -0xa

    const/16 v28, 0x1

    invoke-direct/range {v23 .. v40}, Landroid/net/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIIIIJJJJJ)V

    move-object/from16 v2, v23

    .line 1413
    new-instance v23, Landroid/net/NetworkStats$Entry;

    const-string v24, "wlan0"

    .line 1417
    invoke-virtual/range {p2 .. p2}, Lorg/codeaurora/ims/QtiVideoCallDataUsage;->getWlanRxDataUsage()J

    move-result-wide v31

    .line 1418
    invoke-virtual/range {p2 .. p2}, Lorg/codeaurora/ims/QtiVideoCallDataUsage;->getWlanTxDataUsage()J

    move-result-wide v35

    const/16 v28, 0x0

    invoke-direct/range {v23 .. v40}, Landroid/net/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIIIIJJJJJ)V

    move-object/from16 v5, v23

    .line 1420
    invoke-virtual {v1, v2}, Landroid/net/NetworkStats;->addEntry(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    move-result-object v1

    .line 1421
    invoke-virtual {v1, v5}, Landroid/net/NetworkStats;->addEntry(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    move-result-object v1

    .line 1424
    iget-object v2, v0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mVtDataUsageChanged:Ljava/lang/Boolean;

    monitor-enter v2

    .line 1425
    :try_start_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, v0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mVtDataUsageChanged:Ljava/lang/Boolean;

    .line 1426
    iput-object v3, v0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mVtDataUsageSnapshot:Landroid/net/NetworkStats;

    .line 1427
    iput-object v1, v0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mVtDataUsageUidSnapshot:Landroid/net/NetworkStats;

    .line 1428
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1430
    invoke-virtual/range {p2 .. p2}, Lorg/codeaurora/ims/QtiVideoCallDataUsage;->getWwanDataUsage()J

    move-result-wide v1

    invoke-virtual/range {p2 .. p2}, Lorg/codeaurora/ims/QtiVideoCallDataUsage;->getWlanDataUsage()J

    move-result-wide v3

    add-long/2addr v1, v3

    .line 1432
    iget-wide v3, v0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mRemainingAlertQuota:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-lez v7, :cond_0

    cmp-long v7, v1, v5

    if-lez v7, :cond_0

    sub-long/2addr v3, v1

    .line 1434
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 1435
    invoke-direct {v0, v1, v2}, Lorg/codeaurora/ims/ImsServiceClassTracker;->updateAlertQuota(J)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 1428
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public handleCalls(Ljava/util/ArrayList;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/codeaurora/ims/DriverCallIms;",
            ">;)V"
        }
    .end annotation

    .line 260
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 262
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->shallDisableVideo(Ljava/util/ArrayList;)Z

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-eqz p1, :cond_d

    .line 263
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_d

    .line 266
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/codeaurora/ims/DriverCallIms;

    .line 267
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/codeaurora/ims/DriverCallIms;

    iget v5, v5, Lorg/codeaurora/ims/DriverCallIms;->index:I

    invoke-direct {p0, v5}, Lorg/codeaurora/ims/ImsServiceClassTracker;->getCachedCallComposerInfo(I)Lorg/codeaurora/ims/CallComposerInfo;

    move-result-object v5

    .line 266
    invoke-virtual {v4, v5}, Lorg/codeaurora/ims/DriverCallIms;->setmCallComposerInfo(Lorg/codeaurora/ims/CallComposerInfo;)V

    .line 270
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/codeaurora/ims/DriverCallIms;

    .line 271
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/codeaurora/ims/DriverCallIms;

    iget v5, v5, Lorg/codeaurora/ims/DriverCallIms;->index:I

    invoke-direct {p0, v5}, Lorg/codeaurora/ims/ImsServiceClassTracker;->getCachedEcnamInfo(I)Lorg/codeaurora/ims/EcnamInfo;

    move-result-object v5

    .line 270
    invoke-virtual {v4, v5}, Lorg/codeaurora/ims/DriverCallIms;->setmEcnamInfo(Lorg/codeaurora/ims/EcnamInfo;)V

    .line 273
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/codeaurora/ims/DriverCallIms;

    invoke-direct {p0, v4, v1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->maybeDisableVideo(Lorg/codeaurora/ims/DriverCallIms;Z)Lorg/codeaurora/ims/DriverCallIms;

    move-result-object v6

    .line 274
    iget-object v4, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mPendingSessionList:Ljava/util/ArrayList;

    if-eqz v4, :cond_2

    .line 275
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 276
    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 277
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 279
    iget-object v7, v6, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v8, Lorg/codeaurora/ims/DriverCallIms$State;->DIALING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v7, v8, :cond_1

    iget-object v7, v6, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v8, Lorg/codeaurora/ims/DriverCallIms$State;->END:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v7, v8, :cond_0

    :cond_1
    iget-object v7, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    iget v8, v6, Lorg/codeaurora/ims/DriverCallIms;->index:I

    .line 281
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_0

    .line 284
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Found match call session in temp list, s = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 285
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Index in call list is "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, v6, Lorg/codeaurora/ims/DriverCallIms;->index:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 286
    iget v7, v6, Lorg/codeaurora/ims/DriverCallIms;->index:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {p0, v7, v5, v2}, Lorg/codeaurora/ims/ImsServiceClassTracker;->addCall(Ljava/lang/Integer;Lorg/codeaurora/ims/ImsCallSessionImpl;Z)V

    .line 288
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 293
    :cond_2
    iget-object v4, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    iget v5, v6, Lorg/codeaurora/ims/DriverCallIms;->index:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/codeaurora/ims/ImsCallSessionImpl;

    if-eqz v4, :cond_4

    .line 298
    invoke-virtual {v4, v6}, Lorg/codeaurora/ims/ImsCallSessionImpl;->updateCall(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 301
    iget-object v4, v6, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    iget-object v4, v4, Landroid/telephony/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-object v4, v6, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    iget-object v4, v4, Landroid/telephony/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    const-string v5, "Forbidden. Not Authorized for Service"

    .line 302
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 304
    iget-object v4, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {v4}, Lorg/codeaurora/ims/ImsServiceSub;->getConfigInterface()Lorg/codeaurora/ims/ImsConfigImpl;

    move-result-object v4

    if-eqz v4, :cond_3

    const/16 v5, 0x193

    .line 306
    const-string v7, "invite 403: Forbidden. Not Authorized for Service"

    invoke-virtual {v4, v5, v7}, Lorg/codeaurora/ims/ImsConfigImpl;->checkinVolteProvision(ILjava/lang/String;)V

    :cond_3
    move-object v9, p0

    goto/16 :goto_5

    .line 314
    :cond_4
    iget-object v4, v6, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v5, Lorg/codeaurora/ims/DriverCallIms$State;->END:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v4, v5, :cond_5

    .line 318
    iget v4, v6, Lorg/codeaurora/ims/DriverCallIms;->index:I

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsServiceClassTracker;->maybeBroadcastPreAlertingCallIntent(I)V

    move-object v9, p0

    goto/16 :goto_6

    .line 321
    :cond_5
    new-instance v5, Lorg/codeaurora/ims/ImsCallSessionImpl;

    iget-object v7, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v8, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mContext:Landroid/content/Context;

    iget-boolean v10, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mIsVideoSupported:Z

    iget-object v4, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    .line 322
    invoke-virtual {v4}, Lorg/codeaurora/ims/ImsServiceSub;->getPhoneId()I

    move-result v11

    iget-object v4, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {v4}, Lorg/codeaurora/ims/ImsServiceSub;->getImsConferenceController()Lorg/codeaurora/ims/ImsConferenceController;

    move-result-object v12

    move-object v9, p0

    invoke-direct/range {v5 .. v12}, Lorg/codeaurora/ims/ImsCallSessionImpl;-><init>(Lorg/codeaurora/ims/DriverCallIms;Lorg/codeaurora/ims/ImsSenderRxr;Landroid/content/Context;Lorg/codeaurora/ims/ImsServiceClassTracker;ZILorg/codeaurora/ims/ImsConferenceController;)V

    .line 323
    iget-object p0, v9, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallListener:Lorg/codeaurora/ims/QImsSessionBase$ListenerBase;

    invoke-virtual {v5, p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->addListener(Lorg/codeaurora/ims/QImsSessionBase$Listener;)V

    .line 324
    iget-boolean p0, v9, Lorg/codeaurora/ims/ImsServiceClassTracker;->mIsVideoSupported:Z

    iget-boolean v4, v9, Lorg/codeaurora/ims/ImsServiceClassTracker;->mIsVoiceSupported:Z

    invoke-virtual {v5, p0, v4}, Lorg/codeaurora/ims/ImsCallSessionImpl;->updateFeatureCapabilities(ZZ)V

    .line 327
    iget-boolean p0, v6, Lorg/codeaurora/ims/DriverCallIms;->isMT:Z

    const/4 v4, 0x1

    if-eqz p0, :cond_6

    .line 328
    const-string p0, "MT Call creating a new call session"

    invoke-static {v9, p0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 329
    iget p0, v6, Lorg/codeaurora/ims/DriverCallIms;->index:I

    invoke-virtual {v9, v5, p0, v2}, Lorg/codeaurora/ims/ImsServiceClassTracker;->reportIncomingCall(Lorg/codeaurora/ims/ImsCallSessionImpl;IZ)V

    goto :goto_3

    .line 330
    :cond_6
    iget-boolean p0, v6, Lorg/codeaurora/ims/DriverCallIms;->isMpty:Z

    if-eqz p0, :cond_8

    .line 331
    const-string p0, "Conference Call creating a new call session"

    invoke-static {v9, p0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 332
    iget-object p0, v9, Lorg/codeaurora/ims/ImsServiceClassTracker;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsServiceSub;->getImsConferenceController()Lorg/codeaurora/ims/ImsConferenceController;

    move-result-object p0

    .line 333
    invoke-virtual {p0, v5}, Lorg/codeaurora/ims/ImsConferenceController;->processNewMptyCall(Lorg/codeaurora/ims/ImsCallSessionImpl;)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 335
    const-string v7, "Phantom conference call Scenario"

    invoke-static {v9, v7}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 337
    :cond_7
    iget v7, v6, Lorg/codeaurora/ims/DriverCallIms;->index:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v9, v7, v5, v4}, Lorg/codeaurora/ims/ImsServiceClassTracker;->addCall(Ljava/lang/Integer;Lorg/codeaurora/ims/ImsCallSessionImpl;Z)V

    .line 339
    :goto_2
    invoke-virtual {v5, v6}, Lorg/codeaurora/ims/ImsCallSessionImpl;->updateConfSession(Lorg/codeaurora/ims/DriverCallIms;)V

    goto :goto_4

    .line 340
    :cond_8
    iget-object p0, v6, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v7, Lorg/codeaurora/ims/DriverCallIms$State;->END:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq p0, v7, :cond_9

    .line 341
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v7, "MO phantom Call Scenario. State = "

    invoke-direct {p0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v6, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v9, p0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    move p0, v4

    goto :goto_4

    :cond_9
    :goto_3
    move p0, v2

    :goto_4
    if-eqz p0, :cond_a

    .line 345
    iget p0, v6, Lorg/codeaurora/ims/DriverCallIms;->index:I

    invoke-virtual {v9, v5, p0, v4}, Lorg/codeaurora/ims/ImsServiceClassTracker;->reportIncomingCall(Lorg/codeaurora/ims/ImsCallSessionImpl;IZ)V

    .line 349
    :cond_a
    :goto_5
    iget-object p0, v6, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v4, Lorg/codeaurora/ims/DriverCallIms$State;->END:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq p0, v4, :cond_b

    .line 350
    iget p0, v6, Lorg/codeaurora/ims/DriverCallIms;->index:I

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    :cond_b
    iget-object p0, v6, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v4, Lorg/codeaurora/ims/DriverCallIms$State;->END:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne p0, v4, :cond_c

    .line 353
    iget p0, v6, Lorg/codeaurora/ims/DriverCallIms;->index:I

    invoke-direct {v9, p0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->maybeBroadcastPreAlertingCallIntent(I)V

    :cond_c
    :goto_6
    add-int/lit8 v3, v3, 0x1

    move-object p0, v9

    goto/16 :goto_0

    :cond_d
    move-object v9, p0

    .line 360
    iget-object p0, v9, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    .line 361
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_e
    :goto_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 362
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 363
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_e

    .line 368
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handleCalls: removing dropped/ended call id:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 369
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 368
    invoke-static {v9, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 370
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    .line 371
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-direct {v9, v1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->notifyCallRemoved(Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    .line 375
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getState()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_e

    .line 376
    new-instance v1, Lorg/codeaurora/ims/DriverCallIms;

    invoke-direct {v1}, Lorg/codeaurora/ims/DriverCallIms;-><init>()V

    .line 377
    sget-object v2, Lorg/codeaurora/ims/DriverCallIms$State;->END:Lorg/codeaurora/ims/DriverCallIms$State;

    iput-object v2, v1, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    .line 378
    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v2}, Landroid/telephony/ims/ImsReasonInfo;-><init>()V

    iput-object v2, v1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    .line 379
    iget-object v2, v1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    const/16 v3, 0x6f

    iput v3, v2, Landroid/telephony/ims/ImsReasonInfo;->mCode:I

    .line 380
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {p1, v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->updateCall(Lorg/codeaurora/ims/DriverCallIms;)V

    goto :goto_7

    :cond_f
    return-void
.end method

.method public handleHandover(Lorg/codeaurora/ims/HoInfo;)V
    .locals 14

    .line 764
    const-string v0, "in handleHandover"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 765
    invoke-static {p1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->isSrvcc(Lorg/codeaurora/ims/HoInfo;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 766
    invoke-virtual {p1}, Lorg/codeaurora/ims/HoInfo;->getType()I

    move-result p1

    if-ne p1, v1, :cond_8

    .line 767
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->removeCallSessionsAfterSrvcc()V

    return-void

    .line 773
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "hoState: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/codeaurora/ims/HoInfo;->getType()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " srcTech: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 774
    invoke-virtual {p1}, Lorg/codeaurora/ims/HoInfo;->getSrcTech()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " tarTech: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 775
    invoke-virtual {p1}, Lorg/codeaurora/ims/HoInfo;->getTargetTech()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " extraType: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 776
    invoke-virtual {p1}, Lorg/codeaurora/ims/HoInfo;->getExtraType()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " extraInfo: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 777
    invoke-virtual {p1}, Lorg/codeaurora/ims/HoInfo;->getExtraInfo()[B

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ErrorCode: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 778
    invoke-virtual {p1}, Lorg/codeaurora/ims/HoInfo;->getErrorCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " errorMessage: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 779
    invoke-virtual {p1}, Lorg/codeaurora/ims/HoInfo;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 773
    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 782
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const/16 v2, 0xe

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/codeaurora/ims/HoInfo;->getSrcTech()I

    move-result v0

    invoke-virtual {p1}, Lorg/codeaurora/ims/HoInfo;->getTargetTech()I

    move-result v3

    if-ne v0, v3, :cond_1

    .line 783
    invoke-virtual {p1}, Lorg/codeaurora/ims/HoInfo;->getSrcTech()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 784
    invoke-virtual {p1}, Lorg/codeaurora/ims/HoInfo;->getErrorCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 785
    invoke-virtual {p1}, Lorg/codeaurora/ims/HoInfo;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 789
    const-string v0, "Possible EPSFB_SUCCESSFULL, inform Echolocate"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 790
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->sendEpsfbBroadcastToEcholocate()V

    .line 795
    :cond_1
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 796
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 797
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 798
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lorg/codeaurora/ims/ImsCallSessionImpl;

    if-nez v6, :cond_3

    .line 800
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "handleHandover: null callsession. Key = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 803
    :cond_3
    invoke-virtual {p1}, Lorg/codeaurora/ims/HoInfo;->getType()I

    move-result v7

    invoke-virtual {p1}, Lorg/codeaurora/ims/HoInfo;->getSrcTech()I

    move-result v8

    .line 804
    invoke-virtual {p1}, Lorg/codeaurora/ims/HoInfo;->getTargetTech()I

    move-result v9

    invoke-virtual {p1}, Lorg/codeaurora/ims/HoInfo;->getExtraType()I

    move-result v10

    .line 805
    invoke-virtual {p1}, Lorg/codeaurora/ims/HoInfo;->getExtraInfo()[B

    move-result-object v11

    .line 806
    invoke-virtual {p1}, Lorg/codeaurora/ims/HoInfo;->getErrorCode()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p1}, Lorg/codeaurora/ims/HoInfo;->getErrorMessage()Ljava/lang/String;

    move-result-object v13

    .line 803
    invoke-virtual/range {v6 .. v13}, Lorg/codeaurora/ims/ImsCallSessionImpl;->handleHandover(IIII[BLjava/lang/String;Ljava/lang/String;)V

    if-nez v3, :cond_2

    .line 807
    invoke-virtual {v6}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isInCall()Z

    move-result v4

    if-eqz v4, :cond_2

    move v3, v1

    goto :goto_0

    :cond_4
    const/16 v0, 0x12

    if-nez v3, :cond_5

    .line 814
    invoke-virtual {p1}, Lorg/codeaurora/ims/HoInfo;->getExtraType()I

    move-result v4

    if-ne v4, v1, :cond_5

    .line 815
    invoke-virtual {p1}, Lorg/codeaurora/ims/HoInfo;->getExtraInfo()[B

    move-result-object v4

    if-eqz v4, :cond_5

    .line 817
    new-instance v4, Ljava/lang/String;

    invoke-virtual {p1}, Lorg/codeaurora/ims/HoInfo;->getExtraInfo()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    .line 821
    const-string v5, "HO from LTE to IWLAN Fail"

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 823
    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsServiceClassTracker;->extractErrorCode(Ljava/lang/String;)I

    move-result v5

    .line 824
    new-instance v6, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v7, 0x3e8

    invoke-direct {v6, v7, v5, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    const/4 v4, 0x2

    .line 827
    invoke-direct {p0, v6, v4, v0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->sendBroadcastForDisconnected(Landroid/telephony/ims/ImsReasonInfo;II)V

    :cond_5
    if-eqz v3, :cond_8

    .line 834
    invoke-virtual {p1}, Lorg/codeaurora/ims/HoInfo;->getType()I

    move-result v3

    if-ne v3, v1, :cond_8

    .line 835
    invoke-virtual {p1}, Lorg/codeaurora/ims/HoInfo;->getSrcTech()I

    move-result v1

    if-eq v1, v0, :cond_6

    .line 836
    invoke-virtual {p1}, Lorg/codeaurora/ims/HoInfo;->getSrcTech()I

    move-result v0

    const/16 v1, 0x13

    if-ne v0, v1, :cond_8

    .line 837
    :cond_6
    invoke-virtual {p1}, Lorg/codeaurora/ims/HoInfo;->getTargetTech()I

    move-result v0

    if-eq v0, v2, :cond_7

    .line 838
    invoke-virtual {p1}, Lorg/codeaurora/ims/HoInfo;->getTargetTech()I

    move-result p1

    const/16 v0, 0x14

    if-ne p1, v0, :cond_8

    .line 839
    :cond_7
    const-string p1, "Switching to LTE network for better quality"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_8
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 4

    const-string v0, "Unknown message = "

    .line 1134
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Message received: what = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 1137
    :try_start_0
    iget v2, p1, Landroid/os/Message;->what:I

    if-eq v2, v1, :cond_3

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    .line 1154
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 1150
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 1151
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->handleSrtpEncryptionInfo(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    goto :goto_0

    .line 1147
    :cond_1
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->handleCloseAllSessions()V

    goto :goto_0

    .line 1143
    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lorg/codeaurora/telephony/utils/AsyncResult;

    const/4 v0, 0x0

    .line 1144
    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->handleIncomingDtmf(Lorg/codeaurora/telephony/utils/AsyncResult;Z)V

    goto :goto_0

    .line 1139
    :cond_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 1140
    invoke-direct {p0, p1, v1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->handleIncomingDtmf(Lorg/codeaurora/telephony/utils/AsyncResult;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1157
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "handleMessage: Exception: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return v1
.end method

.method public handleModifyCallRequest(Lorg/codeaurora/ims/CallModify;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 517
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    iget v1, p1, Lorg/codeaurora/ims/CallModify;->call_index:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsCallSessionImpl;

    if-eqz v0, :cond_0

    .line 519
    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->onReceivedModifyCall(Lorg/codeaurora/ims/CallModify;)V

    return-void

    .line 521
    :cond_0
    const-string p1, "handleModifyCallRequest Error: callSession is null"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 524
    :cond_1
    const-string p1, "handleModifyCallRequest Error: Null Call Modify request "

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public handleSuppSvcUnsol(Lorg/codeaurora/ims/SuppNotifyInfo;)V
    .locals 9

    .line 609
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handleSuppSvcUnsol connId= "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/codeaurora/ims/SuppNotifyInfo;->getConnId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 610
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    .line 611
    invoke-virtual {p1}, Lorg/codeaurora/ims/SuppNotifyInfo;->getConnId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsCallSessionImpl;

    if-eqz v0, :cond_2

    .line 614
    invoke-virtual {p1}, Lorg/codeaurora/ims/SuppNotifyInfo;->getHistoryInfo()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 616
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 617
    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 618
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->parsePhoneNumbers([Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move-object v8, v1

    .line 620
    new-instance v2, Landroid/telephony/ims/ImsSuppServiceNotification;

    .line 621
    invoke-virtual {p1}, Lorg/codeaurora/ims/SuppNotifyInfo;->getNotificationType()I

    move-result v3

    invoke-virtual {p1}, Lorg/codeaurora/ims/SuppNotifyInfo;->getCode()I

    move-result v4

    invoke-virtual {p1}, Lorg/codeaurora/ims/SuppNotifyInfo;->getIndex()I

    move-result v5

    .line 622
    invoke-virtual {p1}, Lorg/codeaurora/ims/SuppNotifyInfo;->getNotificationType()I

    move-result v6

    invoke-virtual {p1}, Lorg/codeaurora/ims/SuppNotifyInfo;->getNumber()Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v2 .. v8}, Landroid/telephony/ims/ImsSuppServiceNotification;-><init>(IIIILjava/lang/String;[Ljava/lang/String;)V

    .line 624
    invoke-virtual {p1}, Lorg/codeaurora/ims/SuppNotifyInfo;->hasHoldTone()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 625
    invoke-virtual {p1}, Lorg/codeaurora/ims/SuppNotifyInfo;->getHoldTone()Z

    move-result p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 627
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "handleSuppSvcUnsol suppNotification= "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " startOnHoldLocalTone = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 629
    invoke-virtual {v0, v2, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->updateSuppServiceInfo(Landroid/telephony/ims/ImsSuppServiceNotification;Z)V

    return-void

    .line 631
    :cond_2
    const-string p1, "No call session found for number: "

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public handleTtyModeChangeUnsol(I)V
    .locals 4

    .line 644
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    .line 645
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 646
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 648
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getState()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 649
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 650
    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->notifyTtyModeChange(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 656
    const-string p1, "No Active call session found for TTY mode change"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public isUssdSupported()Z
    .locals 0

    .line 1032
    iget-object p0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsServiceSub;->isUssdSupported()Z

    move-result p0

    return p0
.end method

.method public isVideoSupportedOverWifi()Z
    .locals 0

    .line 1028
    iget-object p0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsServiceSub;->isVideoSupportedOverWifi()Z

    move-result p0

    return p0
.end method

.method public isVoiceSupportedOverWifi()Z
    .locals 0

    .line 1024
    iget-object p0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsServiceSub;->isVoiceSupportedOverWifi()Z

    move-result p0

    return p0
.end method

.method public notifyIncomingRttVtCallUpgrade()V
    .locals 0

    .line 1291
    iget-object p0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    if-eqz p0, :cond_0

    .line 1292
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsServiceSub;->notifyIncomingRttVtCallUpgrade()V

    :cond_0
    return-void
.end method

.method public onCallClosed(Lorg/codeaurora/ims/QImsSessionBase;)V
    .locals 2

    .line 458
    check-cast p1, Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 459
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getState()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 460
    const-string p1, "onCallClosed: call session not in terminated state. Ignore."

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 467
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mPendingSessionList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 468
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Removing pending session on close "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 469
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->notifyCallRemoved(Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    :cond_1
    return-void
.end method

.method public onCallDataUsageChanged(Lorg/codeaurora/ims/ImsCallSessionImpl;Lorg/codeaurora/ims/QtiVideoCallDataUsage;)V
    .locals 2

    .line 1377
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallDataUsageHandler:Landroid/os/Handler;

    new-instance v1, Lorg/codeaurora/ims/ImsServiceClassTracker$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1, p2}, Lorg/codeaurora/ims/ImsServiceClassTracker$$ExternalSyntheticLambda6;-><init>(Lorg/codeaurora/ims/ImsServiceClassTracker;Lorg/codeaurora/ims/ImsCallSessionImpl;Lorg/codeaurora/ims/QtiVideoCallDataUsage;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onPreAlertingCallDataAvailable(Lorg/codeaurora/ims/PreAlertingCallInfo;)V
    .locals 4

    .line 1054
    invoke-static {}, Lorg/codeaurora/ims/ImsServiceClassTracker;->getToken()I

    move-result v0

    .line 1055
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mPreAlertingCallTokenList:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Lorg/codeaurora/ims/PreAlertingCallInfo;->getCallId()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1057
    invoke-virtual {p1}, Lorg/codeaurora/ims/PreAlertingCallInfo;->getCallComposerInfo()Lorg/codeaurora/ims/CallComposerInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1058
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallComposerCache:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1}, Lorg/codeaurora/ims/PreAlertingCallInfo;->getCallComposerInfo()Lorg/codeaurora/ims/CallComposerInfo;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1062
    :cond_0
    invoke-virtual {p1}, Lorg/codeaurora/ims/PreAlertingCallInfo;->getEcnamInfo()Lorg/codeaurora/ims/EcnamInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1063
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mEcnamInfoCache:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1}, Lorg/codeaurora/ims/PreAlertingCallInfo;->getEcnamInfo()Lorg/codeaurora/ims/EcnamInfo;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1066
    :cond_1
    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->broadcastPreAlertingCallIntent(Lorg/codeaurora/ims/PreAlertingCallInfo;I)V

    return-void
.end method

.method public onUssdClosed(Lorg/codeaurora/ims/QImsSessionBase;)V
    .locals 3

    .line 505
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onUssdClosed for session "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 506
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mUssdList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 507
    move-object v1, p1

    check-cast v1, Lorg/codeaurora/ims/ImsUssdSessionImpl;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 508
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Removing session on close "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 509
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->notifyUssdRemoved(Lorg/codeaurora/ims/ImsUssdSessionImpl;)V

    :cond_0
    return-void
.end method

.method public onUssdMessageReceived(Lorg/codeaurora/ims/UssdInfo;)V
    .locals 3

    .line 395
    invoke-virtual {p1}, Lorg/codeaurora/ims/UssdInfo;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    .line 399
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mUssdList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    .line 400
    const-string p1, "onUssdMessageReceived: ongoing USSD session"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz v0, :cond_1

    .line 405
    const-string p1, "onUssdMessageReceived: received empty message"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 409
    :cond_1
    new-instance v0, Landroid/telephony/ims/ImsCallProfile;

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Landroid/telephony/ims/ImsCallProfile;-><init>(II)V

    .line 411
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {p0, v0, p1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->createCallSession(Landroid/telephony/ims/ImsCallProfile;Lorg/codeaurora/ims/UssdInfo;)Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    move-result-object p1

    const/4 v0, 0x0

    .line 412
    invoke-direct {p0, v2, v0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->createIncomingCallBundle(ZZ)Landroid/os/Bundle;

    move-result-object p0

    .line 411
    invoke-virtual {v1, p1, p0}, Lorg/codeaurora/ims/ImsServiceSub;->handleNotifyIncomingCall(Landroid/telephony/ims/stub/ImsCallSessionImplBase;Landroid/os/Bundle;)V

    return-void
.end method

.method removeListener(Lorg/codeaurora/ims/ICallListListener;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 874
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallListListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 875
    iget-object p0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallListListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void

    .line 877
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "removeListener error: Listener not found, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 869
    :cond_1
    const-string p0, "removeListener error: listener is null."

    invoke-static {p0}, Lorg/codeaurora/ims/ImsServiceSub$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    return-void
.end method

.method public reportIncomingCall(Lorg/codeaurora/ims/ImsCallSessionImpl;IZ)V
    .locals 4

    .line 914
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "reportIncomingCall :: session="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " isUnknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 917
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->handlePreFiltering(Lorg/codeaurora/ims/ImsCallSessionImpl;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    .line 918
    new-instance v1, Lorg/codeaurora/ims/ImsServiceClassTracker$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p3}, Lorg/codeaurora/ims/ImsServiceClassTracker$$ExternalSyntheticLambda1;-><init>(Lorg/codeaurora/ims/ImsServiceClassTracker;Lorg/codeaurora/ims/ImsCallSessionImpl;Z)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CompletableFuture;->whenCompleteAsync(Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;

    .line 923
    iget-object p3, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mHandler:Landroid/os/Handler;

    new-instance v1, Lorg/codeaurora/ims/ImsServiceClassTracker$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, v0}, Lorg/codeaurora/ims/ImsServiceClassTracker$$ExternalSyntheticLambda2;-><init>(Lorg/codeaurora/ims/ImsServiceClassTracker;Ljava/util/concurrent/CompletableFuture;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {p3, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 934
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p3, 0x1

    invoke-direct {p0, p2, p1, p3}, Lorg/codeaurora/ims/ImsServiceClassTracker;->addCall(Ljava/lang/Integer;Lorg/codeaurora/ims/ImsCallSessionImpl;Z)V

    return-void
.end method

.method public updateFeatureCapabilities(ZZ)V
    .locals 2

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "updateFeatureCapabilities video "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " voice "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mIsVideoSupported:Z

    .line 210
    iput-boolean p2, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mIsVoiceSupported:Z

    .line 211
    iget-object p0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 212
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 213
    invoke-virtual {v0, p1, p2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->updateFeatureCapabilities(ZZ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public updateLowBatteryStatus()V
    .locals 1

    .line 218
    iget-object p0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 219
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 220
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->updateLowBatteryStatus()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public updateVoWiFiCallQuality(I)V
    .locals 1

    .line 1015
    iget-object p0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    .line 1016
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1017
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1018
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 1019
    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->updateVoWiFiCallQuality(I)V

    goto :goto_0

    :cond_0
    return-void
.end method
