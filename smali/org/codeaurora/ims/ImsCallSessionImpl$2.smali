.class Lorg/codeaurora/ims/ImsCallSessionImpl$2;
.super Ljava/lang/Thread;
.source "ImsCallSessionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/codeaurora/ims/ImsCallSessionImpl;->startBeepForAlert()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 4087
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "Exception caught when generator sleep "

    .line 4090
    new-instance v1, Landroid/media/ToneGenerator;

    const/4 v2, 0x0

    const/16 v3, 0x28

    invoke-direct {v1, v2, v3}, Landroid/media/ToneGenerator;-><init>(II)V

    const/16 v2, 0x19

    .line 4093
    :try_start_0
    invoke-virtual {v1, v2}, Landroid/media/ToneGenerator;->startTone(I)Z

    const-wide/16 v2, 0x3e8

    .line 4094
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 4095
    invoke-virtual {v1}, Landroid/media/ToneGenerator;->stopTone()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4100
    invoke-virtual {v1}, Landroid/media/ToneGenerator;->release()V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 4097
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4100
    invoke-virtual {v1}, Landroid/media/ToneGenerator;->release()V

    return-void

    :goto_0
    invoke-virtual {v1}, Landroid/media/ToneGenerator;->release()V

    .line 4102
    throw p0
.end method
