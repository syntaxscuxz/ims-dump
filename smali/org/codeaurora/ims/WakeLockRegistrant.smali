.class public Lorg/codeaurora/ims/WakeLockRegistrant;
.super Lorg/codeaurora/telephony/utils/Registrant;
.source "WakeLockRegistrant.java"


# static fields
.field public static final UNSOL_WAKELOCK_TIMEOUT_MS:J = 0xc8L

.field public static final WAKELOCK_NAME:Ljava/lang/String; = "NotifyRegistrantLock"


# instance fields
.field private mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWakeLockTimeOut:J


# direct methods
.method public constructor <init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/content/Context;)V
    .locals 7

    const-wide/16 v5, 0xc8

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 73
    invoke-direct/range {v0 .. v6}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/content/Context;J)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/content/Context;J)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2, p3}, Lorg/codeaurora/telephony/utils/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    if-eqz p4, :cond_0

    .line 61
    const-string p1, "power"

    invoke-virtual {p4, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    .line 63
    const-string p3, "NotifyRegistrantLock"

    invoke-virtual {p1, p2, p3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lorg/codeaurora/ims/WakeLockRegistrant;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 65
    invoke-virtual {p1, p2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 69
    :cond_0
    iput-wide p5, p0, Lorg/codeaurora/ims/WakeLockRegistrant;->mWakeLockTimeOut:J

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V
    .locals 7

    const-wide/16 v5, 0xc8

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 55
    invoke-direct/range {v0 .. v6}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;J)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;J)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2, p3}, Lorg/codeaurora/telephony/utils/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 50
    iput-object p4, p0, Lorg/codeaurora/ims/WakeLockRegistrant;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 51
    iput-wide p5, p0, Lorg/codeaurora/ims/WakeLockRegistrant;->mWakeLockTimeOut:J

    return-void
.end method

.method private acquireNotifyWakeLock()V
    .locals 3

    .line 101
    iget-object v0, p0, Lorg/codeaurora/ims/WakeLockRegistrant;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 102
    const-string v0, "acquireNotifyWakeLock"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lorg/codeaurora/ims/WakeLockRegistrant;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-wide v1, p0, Lorg/codeaurora/ims/WakeLockRegistrant;->mWakeLockTimeOut:J

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    :cond_0
    return-void
.end method


# virtual methods
.method public notifyException(Ljava/lang/Throwable;)V
    .locals 0

    .line 90
    invoke-direct {p0}, Lorg/codeaurora/ims/WakeLockRegistrant;->acquireNotifyWakeLock()V

    .line 91
    invoke-super {p0, p1}, Lorg/codeaurora/telephony/utils/Registrant;->notifyException(Ljava/lang/Throwable;)V

    return-void
.end method

.method public notifyRegistrant()V
    .locals 0

    .line 78
    invoke-direct {p0}, Lorg/codeaurora/ims/WakeLockRegistrant;->acquireNotifyWakeLock()V

    .line 79
    invoke-super {p0}, Lorg/codeaurora/telephony/utils/Registrant;->notifyRegistrant()V

    return-void
.end method

.method public notifyRegistrant(Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 0

    .line 96
    invoke-direct {p0}, Lorg/codeaurora/ims/WakeLockRegistrant;->acquireNotifyWakeLock()V

    .line 97
    invoke-super {p0, p1}, Lorg/codeaurora/telephony/utils/Registrant;->notifyRegistrant(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void
.end method

.method public notifyResult(Ljava/lang/Object;)V
    .locals 0

    .line 84
    invoke-direct {p0}, Lorg/codeaurora/ims/WakeLockRegistrant;->acquireNotifyWakeLock()V

    .line 85
    invoke-super {p0, p1}, Lorg/codeaurora/telephony/utils/Registrant;->notifyResult(Ljava/lang/Object;)V

    return-void
.end method
