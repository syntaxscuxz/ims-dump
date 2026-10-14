.class public Lcom/qualcomm/ims/vt/ImsVideoGlobals;
.super Ljava/lang/Object;
.source "ImsVideoGlobals.java"

# interfaces
.implements Lorg/codeaurora/ims/ImsSubController$OnMultiSimConfigChanged;


# static fields
.field private static TAG:Ljava/lang/String; = "VideoCall_ImsVideoGlobals"

.field private static sInstance:Lcom/qualcomm/ims/vt/ImsVideoGlobals;


# instance fields
.field private mCameraController:Lcom/qualcomm/ims/vt/CameraController;

.field private mContext:Landroid/content/Context;

.field private mLowBatteryHandler:Lcom/qualcomm/ims/vt/LowBatteryHandler;

.field private mMediaController:Lcom/qualcomm/ims/vt/MediaController;

.field private mServiceSubs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/ImsServiceSub;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Ljava/util/List;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/ImsServiceSub;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->mServiceSubs:Ljava/util/List;

    .line 68
    iput-object p2, p0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->mContext:Landroid/content/Context;

    .line 69
    invoke-static {}, Lcom/qualcomm/ims/vt/ImsMedia;->getInstance()Lcom/qualcomm/ims/vt/ImsMedia;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/qualcomm/ims/vt/CameraController;->init(Landroid/content/Context;Lcom/qualcomm/ims/vt/ImsMedia;)Lcom/qualcomm/ims/vt/CameraController;

    .line 70
    invoke-static {}, Lcom/qualcomm/ims/vt/ImsMedia;->getInstance()Lcom/qualcomm/ims/vt/ImsMedia;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/qualcomm/ims/vt/MediaController;->init(Landroid/content/Context;Lcom/qualcomm/ims/vt/ImsMedia;)V

    .line 71
    iget-object p1, p0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->mServiceSubs:Ljava/util/List;

    invoke-static {p1, p2}, Lcom/qualcomm/ims/vt/LowBatteryHandler;->init(Ljava/util/List;Landroid/content/Context;)Lcom/qualcomm/ims/vt/LowBatteryHandler;

    .line 73
    invoke-static {}, Lcom/qualcomm/ims/vt/CameraController;->getInstance()Lcom/qualcomm/ims/vt/CameraController;

    move-result-object p1

    iput-object p1, p0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->mCameraController:Lcom/qualcomm/ims/vt/CameraController;

    .line 74
    invoke-static {}, Lcom/qualcomm/ims/vt/MediaController;->getInstance()Lcom/qualcomm/ims/vt/MediaController;

    move-result-object p1

    iput-object p1, p0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->mMediaController:Lcom/qualcomm/ims/vt/MediaController;

    .line 75
    invoke-static {}, Lcom/qualcomm/ims/vt/LowBatteryHandler;->getInstance()Lcom/qualcomm/ims/vt/LowBatteryHandler;

    move-result-object p1

    iput-object p1, p0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->mLowBatteryHandler:Lcom/qualcomm/ims/vt/LowBatteryHandler;

    .line 76
    iget-object p1, p0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->mServiceSubs:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/codeaurora/ims/ImsServiceSub;

    .line 77
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->mMediaController:Lcom/qualcomm/ims/vt/MediaController;

    invoke-virtual {p2, v0}, Lorg/codeaurora/ims/ImsServiceSub;->addListener(Lorg/codeaurora/ims/ICallListListener;)V

    .line 78
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->mLowBatteryHandler:Lcom/qualcomm/ims/vt/LowBatteryHandler;

    invoke-virtual {p2, v0}, Lorg/codeaurora/ims/ImsServiceSub;->addListener(Lorg/codeaurora/ims/ICallListListener;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getImsVideoCallProviderImpl(Lorg/codeaurora/ims/ImsCallSessionImpl;)Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 83
    :cond_0
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getImsVideoCallProviderImpl()Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance()Lcom/qualcomm/ims/vt/ImsVideoGlobals;
    .locals 2

    .line 47
    sget-object v0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->sInstance:Lcom/qualcomm/ims/vt/ImsVideoGlobals;

    if-eqz v0, :cond_0

    return-object v0

    .line 48
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ImsVideoGlobals: getInstance called before init."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static init(Ljava/util/List;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/ImsServiceSub;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 31
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 35
    sget-object v0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->sInstance:Lcom/qualcomm/ims/vt/ImsVideoGlobals;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;-><init>(Ljava/util/List;Landroid/content/Context;)V

    sput-object v0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->sInstance:Lcom/qualcomm/ims/vt/ImsVideoGlobals;

    return-void

    .line 40
    :cond_0
    const-string p0, "init ignored!"

    invoke-static {p0}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->log(Ljava/lang/String;)V

    return-void

    .line 32
    :cond_1
    const-string p0, "Default subscription is null."

    invoke-static {p0}, Lorg/codeaurora/ims/ImsServiceSub$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    .line 129
    sget-object v0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1

    .line 132
    sget-object v0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 3

    .line 54
    const-string v0, "dispose()"

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->log(Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->mServiceSubs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ImsServiceSub;

    .line 56
    iget-object v2, p0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->mMediaController:Lcom/qualcomm/ims/vt/MediaController;

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsServiceSub;->removeListener(Lorg/codeaurora/ims/ICallListListener;)V

    .line 57
    iget-object v2, p0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->mLowBatteryHandler:Lcom/qualcomm/ims/vt/LowBatteryHandler;

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsServiceSub;->removeListener(Lorg/codeaurora/ims/ICallListListener;)V

    goto :goto_0

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->mCameraController:Lcom/qualcomm/ims/vt/CameraController;

    invoke-virtual {v0}, Lcom/qualcomm/ims/vt/CameraController;->dispose()V

    .line 60
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->mMediaController:Lcom/qualcomm/ims/vt/MediaController;

    invoke-virtual {v0}, Lcom/qualcomm/ims/vt/MediaController;->dispose()V

    .line 61
    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->mLowBatteryHandler:Lcom/qualcomm/ims/vt/LowBatteryHandler;

    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/LowBatteryHandler;->dispose()V

    const/4 p0, 0x0

    .line 62
    sput-object p0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->sInstance:Lcom/qualcomm/ims/vt/ImsVideoGlobals;

    return-void
.end method

.method findSessionByMediaId(I)Lorg/codeaurora/ims/ImsCallSessionImpl;
    .locals 2

    .line 89
    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->mServiceSubs:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsServiceSub;

    .line 90
    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->findSessionByMediaId(I)Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    :cond_1
    return-object v0
.end method

.method findVideoCallProviderbyMediaId(I)Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;
    .locals 0

    .line 106
    invoke-virtual {p0, p1}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->findSessionByMediaId(I)Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->getImsVideoCallProviderImpl(Lorg/codeaurora/ims/ImsCallSessionImpl;)Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    move-result-object p0

    return-object p0
.end method

.method findVideoCallProviderbyMediaIdAndStream(II)Lcom/qualcomm/ims/vt/ImsVideoCallProviderBase;
    .locals 0

    .line 98
    invoke-virtual {p0, p1}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->findSessionByMediaId(I)Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 102
    :cond_0
    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getVideoCallProvider(I)Lcom/qualcomm/ims/vt/ImsVideoCallProviderBase;

    move-result-object p0

    return-object p0
.end method

.method getCameraController()Lcom/qualcomm/ims/vt/CameraController;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->mCameraController:Lcom/qualcomm/ims/vt/CameraController;

    return-object p0
.end method

.method getMediaController()Lcom/qualcomm/ims/vt/MediaController;
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->mMediaController:Lcom/qualcomm/ims/vt/MediaController;

    return-object p0
.end method

.method public onMultiSimConfigChanged(II)V
    .locals 2

    if-ne p1, p2, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    if-ge p1, p2, :cond_1

    .line 123
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->mServiceSubs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsServiceSub;

    iget-object v1, p0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->mMediaController:Lcom/qualcomm/ims/vt/MediaController;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsServiceSub;->addListener(Lorg/codeaurora/ims/ICallListListener;)V

    .line 124
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->mServiceSubs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsServiceSub;

    iget-object v1, p0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->mLowBatteryHandler:Lcom/qualcomm/ims/vt/LowBatteryHandler;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsServiceSub;->addListener(Lorg/codeaurora/ims/ICallListListener;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
