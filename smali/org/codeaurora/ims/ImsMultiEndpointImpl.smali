.class public Lorg/codeaurora/ims/ImsMultiEndpointImpl;
.super Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;
.source "ImsMultiEndpointImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/ims/ImsMultiEndpointImpl$ImsMultiEndpointImplHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ImsMultiEndpointImpl"

.field private static sExecutor:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private final EVENT_CAPABILITIES_CHANGED:I

.field private final EVENT_REFRESH_VICE_INFO:I

.field private mCi:Lorg/codeaurora/ims/ImsSenderRxr;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mImsViceParser:Lorg/codeaurora/ims/parser/ImsViceParser;

.field private mIsVideoSupported:Z

.field private mIsVoiceSupported:Z

.field private mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;


# direct methods
.method static bridge synthetic -$$Nest$mhandleRefreshViceInfo(Lorg/codeaurora/ims/ImsMultiEndpointImpl;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsMultiEndpointImpl;->handleRefreshViceInfo(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyViceInfoAsync(Lorg/codeaurora/ims/ImsMultiEndpointImpl;)V
    .locals 0

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsMultiEndpointImpl;->notifyViceInfoAsync()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateCapabilities(Lorg/codeaurora/ims/ImsMultiEndpointImpl;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsMultiEndpointImpl;->updateCapabilities(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void
.end method

.method public constructor <init>(Lorg/codeaurora/ims/ImsSenderRxr;Landroid/content/Context;Lorg/codeaurora/ims/ImsServiceSub;)V
    .locals 3

    .line 47
    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;-><init>()V

    const/4 v0, 0x1

    .line 31
    iput v0, p0, Lorg/codeaurora/ims/ImsMultiEndpointImpl;->EVENT_REFRESH_VICE_INFO:I

    const/4 v1, 0x2

    .line 32
    iput v1, p0, Lorg/codeaurora/ims/ImsMultiEndpointImpl;->EVENT_CAPABILITIES_CHANGED:I

    .line 37
    new-instance v2, Lorg/codeaurora/ims/ImsMultiEndpointImpl$ImsMultiEndpointImplHandler;

    invoke-direct {v2, p0}, Lorg/codeaurora/ims/ImsMultiEndpointImpl$ImsMultiEndpointImplHandler;-><init>(Lorg/codeaurora/ims/ImsMultiEndpointImpl;)V

    iput-object v2, p0, Lorg/codeaurora/ims/ImsMultiEndpointImpl;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    .line 42
    iput-boolean v2, p0, Lorg/codeaurora/ims/ImsMultiEndpointImpl;->mIsVideoSupported:Z

    .line 43
    iput-boolean v2, p0, Lorg/codeaurora/ims/ImsMultiEndpointImpl;->mIsVoiceSupported:Z

    .line 48
    iput-object p2, p0, Lorg/codeaurora/ims/ImsMultiEndpointImpl;->mContext:Landroid/content/Context;

    .line 49
    iput-object p1, p0, Lorg/codeaurora/ims/ImsMultiEndpointImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 50
    iput-object p3, p0, Lorg/codeaurora/ims/ImsMultiEndpointImpl;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    .line 52
    new-instance p1, Lorg/codeaurora/ims/parser/ImsViceParser;

    iget-object p2, p0, Lorg/codeaurora/ims/ImsMultiEndpointImpl;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/codeaurora/ims/parser/ImsViceParser;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsMultiEndpointImpl;->mImsViceParser:Lorg/codeaurora/ims/parser/ImsViceParser;

    .line 53
    iget-object p1, p0, Lorg/codeaurora/ims/ImsMultiEndpointImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object p2, p0, Lorg/codeaurora/ims/ImsMultiEndpointImpl;->mHandler:Landroid/os/Handler;

    const/4 p3, 0x0

    invoke-virtual {p1, p2, v0, p3}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForViceRefreshInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 54
    iget-object p1, p0, Lorg/codeaurora/ims/ImsMultiEndpointImpl;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    iget-object p0, p0, Lorg/codeaurora/ims/ImsMultiEndpointImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, p0, v1, p3}, Lorg/codeaurora/ims/ImsServiceSub;->registerForCapabilitiesChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 56
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    sput-object p0, Lorg/codeaurora/ims/ImsMultiEndpointImpl;->sExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private handleRefreshViceInfo(Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 2

    .line 90
    const-string v0, "ImsMultiEndpointImpl"

    if-eqz p1, :cond_2

    iget-object v1, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_2

    iget-object v1, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-nez v1, :cond_0

    goto :goto_0

    .line 95
    :cond_0
    iget-object p1, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lorg/codeaurora/ims/ViceUriInfo;

    .line 96
    invoke-virtual {p1}, Lorg/codeaurora/ims/ViceUriInfo;->getViceInfoUri()[B

    move-result-object p1

    if-eqz p1, :cond_1

    .line 98
    array-length v1, p1

    if-ltz v1, :cond_1

    .line 100
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsMultiEndpointImpl;->processViceInfo([B)V

    return-void

    .line 102
    :cond_1
    const-string p0, "handleRefreshViceInfo: refreshViceInfoUri null"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 91
    :cond_2
    :goto_0
    const-string p0, "handleRefreshViceInfo exception"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private notifyViceInfo()V
    .locals 2

    .line 115
    sget-object v0, Lorg/codeaurora/ims/ImsMultiEndpointImpl;->sExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lorg/codeaurora/ims/ImsMultiEndpointImpl$1;

    invoke-direct {v1, p0}, Lorg/codeaurora/ims/ImsMultiEndpointImpl$1;-><init>(Lorg/codeaurora/ims/ImsMultiEndpointImpl;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private notifyViceInfoAsync()V
    .locals 3

    .line 126
    iget-object v0, p0, Lorg/codeaurora/ims/ImsMultiEndpointImpl;->mImsViceParser:Lorg/codeaurora/ims/parser/ImsViceParser;

    iget-boolean v1, p0, Lorg/codeaurora/ims/ImsMultiEndpointImpl;->mIsVideoSupported:Z

    iget-boolean v2, p0, Lorg/codeaurora/ims/ImsMultiEndpointImpl;->mIsVoiceSupported:Z

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/parser/ImsViceParser;->getCallPullInfo(ZZ)Ljava/util/List;

    move-result-object v0

    .line 130
    iget-object v1, p0, Lorg/codeaurora/ims/ImsMultiEndpointImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsMultiEndpointImpl;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    .line 131
    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsServiceSub;->getPhoneId()I

    move-result v2

    .line 130
    invoke-static {v1, v2}, Lorg/codeaurora/ims/ImsUtils;->isVceEnabledByPlatform(Landroid/content/Context;I)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 132
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v1, :cond_0

    .line 134
    :try_start_0
    const-string v1, "ImsMultiEndpointImpl"

    const-string v2, "Calling onImsExternalCallStateUpdate"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsMultiEndpointImpl;->onImsExternalCallStateUpdate(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 137
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-void
.end method

.method private processViceInfo([B)V
    .locals 1

    .line 109
    iget-object v0, p0, Lorg/codeaurora/ims/ImsMultiEndpointImpl;->mImsViceParser:Lorg/codeaurora/ims/parser/ImsViceParser;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/parser/ImsViceParser;->updateViceXmlBytes([B)V

    .line 110
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsMultiEndpointImpl;->notifyViceInfo()V

    return-void
.end method

.method private updateCapabilities(Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 2

    .line 144
    const-string v0, "ImsMultiEndpointImpl"

    if-eqz p1, :cond_1

    iget-object v1, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_1

    iget-object v1, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-nez v1, :cond_0

    goto :goto_0

    .line 148
    :cond_0
    iget-object p1, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Landroid/util/Pair;

    .line 149
    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lorg/codeaurora/ims/ImsMultiEndpointImpl;->mIsVideoSupported:Z

    .line 150
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsMultiEndpointImpl;->mIsVoiceSupported:Z

    .line 151
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "updateCapabilities:: Video = "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lorg/codeaurora/ims/ImsMultiEndpointImpl;->mIsVideoSupported:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", Voice = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/codeaurora/ims/ImsMultiEndpointImpl;->mIsVoiceSupported:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsMultiEndpointImpl;->notifyViceInfo()V

    return-void

    .line 145
    :cond_1
    :goto_0
    const-string p0, "updateCapabilities exception"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public getHandler()Landroid/os/Handler;
    .locals 0

    .line 158
    iget-object p0, p0, Lorg/codeaurora/ims/ImsMultiEndpointImpl;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public getIsVideoSupported()Z
    .locals 0

    .line 168
    iget-boolean p0, p0, Lorg/codeaurora/ims/ImsMultiEndpointImpl;->mIsVideoSupported:Z

    return p0
.end method

.method public getIsVoiceSupported()Z
    .locals 0

    .line 163
    iget-boolean p0, p0, Lorg/codeaurora/ims/ImsMultiEndpointImpl;->mIsVoiceSupported:Z

    return p0
.end method
