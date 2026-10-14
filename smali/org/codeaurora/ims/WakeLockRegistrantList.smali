.class public Lorg/codeaurora/ims/WakeLockRegistrantList;
.super Lorg/codeaurora/telephony/utils/RegistrantList;
.source "WakeLockRegistrantList.java"


# instance fields
.field private mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWakeLockTimeOut:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-wide/16 v0, 0xc8

    .line 69
    invoke-direct {p0, p1, v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/content/Context;J)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;J)V
    .locals 2

    .line 54
    invoke-direct {p0}, Lorg/codeaurora/telephony/utils/RegistrantList;-><init>()V

    if-eqz p1, :cond_0

    .line 56
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 58
    const-string v1, "NotifyRegistrantLock"

    invoke-virtual {p1, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lorg/codeaurora/ims/WakeLockRegistrantList;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 61
    invoke-virtual {p1, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 65
    :cond_0
    iput-wide p2, p0, Lorg/codeaurora/ims/WakeLockRegistrantList;->mWakeLockTimeOut:J

    return-void
.end method

.method public constructor <init>(Landroid/os/PowerManager$WakeLock;)V
    .locals 2

    const-wide/16 v0, 0xc8

    .line 51
    invoke-direct {p0, p1, v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;J)V

    return-void
.end method

.method public constructor <init>(Landroid/os/PowerManager$WakeLock;J)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lorg/codeaurora/telephony/utils/RegistrantList;-><init>()V

    .line 46
    iput-object p1, p0, Lorg/codeaurora/ims/WakeLockRegistrantList;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 47
    iput-wide p2, p0, Lorg/codeaurora/ims/WakeLockRegistrantList;->mWakeLockTimeOut:J

    return-void
.end method

.method private acquireNotifyWakeLock()V
    .locals 3

    .line 97
    iget-object v0, p0, Lorg/codeaurora/ims/WakeLockRegistrantList;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 98
    const-string v0, "acquireNotifyWakeLock"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lorg/codeaurora/ims/WakeLockRegistrantList;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-wide v1, p0, Lorg/codeaurora/ims/WakeLockRegistrantList;->mWakeLockTimeOut:J

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    :cond_0
    return-void
.end method


# virtual methods
.method public notifyException(Ljava/lang/Throwable;)V
    .locals 0

    .line 80
    invoke-direct {p0}, Lorg/codeaurora/ims/WakeLockRegistrantList;->acquireNotifyWakeLock()V

    .line 81
    invoke-super {p0, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->notifyException(Ljava/lang/Throwable;)V

    return-void
.end method

.method public notifyRegistrants()V
    .locals 0

    .line 74
    invoke-direct {p0}, Lorg/codeaurora/ims/WakeLockRegistrantList;->acquireNotifyWakeLock()V

    .line 75
    invoke-super {p0}, Lorg/codeaurora/telephony/utils/RegistrantList;->notifyRegistrants()V

    return-void
.end method

.method public notifyRegistrants(Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 0

    .line 92
    invoke-direct {p0}, Lorg/codeaurora/ims/WakeLockRegistrantList;->acquireNotifyWakeLock()V

    .line 93
    invoke-super {p0, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->notifyRegistrants(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void
.end method

.method public notifyResult(Ljava/lang/Object;)V
    .locals 0

    .line 86
    invoke-direct {p0}, Lorg/codeaurora/ims/WakeLockRegistrantList;->acquireNotifyWakeLock()V

    .line 87
    invoke-super {p0, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    return-void
.end method
