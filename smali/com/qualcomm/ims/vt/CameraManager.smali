.class public Lcom/qualcomm/ims/vt/CameraManager;
.super Ljava/lang/Object;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/ims/vt/CameraManager$CameraOpener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraManager"

.field private static sCameraManager:Lcom/qualcomm/ims/vt/CameraManager;

.field private static volatile sOpenerOverride:Lcom/qualcomm/ims/vt/CameraManager$CameraOpener;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDpm:Landroid/app/admin/DevicePolicyManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/qualcomm/ims/vt/CameraManager;->mContext:Landroid/content/Context;

    .line 32
    invoke-static {p1}, Lorg/codeaurora/telephony/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    const-string v0, "device_policy"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    iput-object p1, p0, Lcom/qualcomm/ims/vt/CameraManager;->mDpm:Landroid/app/admin/DevicePolicyManager;

    return-void
.end method

.method public static clearOpenerOverride()V
    .locals 1

    const/4 v0, 0x0

    .line 58
    sput-object v0, Lcom/qualcomm/ims/vt/CameraManager;->sOpenerOverride:Lcom/qualcomm/ims/vt/CameraManager$CameraOpener;

    return-void
.end method

.method public static declared-synchronized init(Landroid/content/Context;)V
    .locals 2

    const-class v0, Lcom/qualcomm/ims/vt/CameraManager;

    monitor-enter v0

    .line 38
    :try_start_0
    sget-object v1, Lcom/qualcomm/ims/vt/CameraManager;->sCameraManager:Lcom/qualcomm/ims/vt/CameraManager;

    if-nez v1, :cond_0

    .line 39
    new-instance v1, Lcom/qualcomm/ims/vt/CameraManager;

    invoke-direct {v1, p0}, Lcom/qualcomm/ims/vt/CameraManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/qualcomm/ims/vt/CameraManager;->sCameraManager:Lcom/qualcomm/ims/vt/CameraManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static open(Ljava/lang/String;Lcom/qualcomm/ims/vt/Camera$Listener;)Lcom/qualcomm/ims/vt/Camera;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "open cameraid= "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " listener= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManager"

    invoke-static {v1, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    sget-object v0, Lcom/qualcomm/ims/vt/CameraManager;->sCameraManager:Lcom/qualcomm/ims/vt/CameraManager;

    iget-object v0, v0, Lcom/qualcomm/ims/vt/CameraManager;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-static {v0}, Lorg/codeaurora/telephony/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    invoke-static {p1}, Lorg/codeaurora/telephony/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/qualcomm/ims/vt/CameraManager;->sCameraManager:Lcom/qualcomm/ims/vt/CameraManager;

    iget-object v0, v0, Lcom/qualcomm/ims/vt/CameraManager;->mDpm:Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 72
    sget-object v0, Lcom/qualcomm/ims/vt/CameraManager;->sOpenerOverride:Lcom/qualcomm/ims/vt/CameraManager$CameraOpener;

    if-eqz v0, :cond_1

    .line 73
    sget-object v0, Lcom/qualcomm/ims/vt/CameraManager;->sOpenerOverride:Lcom/qualcomm/ims/vt/CameraManager$CameraOpener;

    sget-object v2, Lcom/qualcomm/ims/vt/CameraManager;->sCameraManager:Lcom/qualcomm/ims/vt/CameraManager;

    if-eqz v2, :cond_0

    iget-object v1, v2, Lcom/qualcomm/ims/vt/CameraManager;->mContext:Landroid/content/Context;

    :cond_0
    invoke-interface {v0, v1, p0, p1}, Lcom/qualcomm/ims/vt/CameraManager$CameraOpener;->open(Landroid/content/Context;Ljava/lang/String;Lcom/qualcomm/ims/vt/Camera$Listener;)Lcom/qualcomm/ims/vt/Camera;

    move-result-object p0

    return-object p0

    .line 77
    :cond_1
    new-instance v0, Lcom/qualcomm/ims/vt/Camera2;

    sget-object v1, Lcom/qualcomm/ims/vt/CameraManager;->sCameraManager:Lcom/qualcomm/ims/vt/CameraManager;

    iget-object v1, v1, Lcom/qualcomm/ims/vt/CameraManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0, p1}, Lcom/qualcomm/ims/vt/Camera2;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/qualcomm/ims/vt/Camera$Listener;)V

    .line 78
    invoke-static {v0}, Lorg/codeaurora/telephony/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    invoke-virtual {v0}, Lcom/qualcomm/ims/vt/Camera;->open()V

    return-object v0

    .line 68
    :cond_2
    new-instance p0, Landroid/hardware/camera2/CameraAccessException;

    const/4 p1, 0x3

    const-string v0, "Camera is disabled."

    invoke-direct {p0, p1, v0}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method public static setOpenerOverride(Lcom/qualcomm/ims/vt/CameraManager$CameraOpener;)V
    .locals 0

    .line 53
    sput-object p0, Lcom/qualcomm/ims/vt/CameraManager;->sOpenerOverride:Lcom/qualcomm/ims/vt/CameraManager$CameraOpener;

    return-void
.end method
