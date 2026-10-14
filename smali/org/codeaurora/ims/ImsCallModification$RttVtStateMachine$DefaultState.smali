.class Lorg/codeaurora/ims/ImsCallModification$RttVtStateMachine$DefaultState;
.super Lcom/android/internal/util/State;
.source "ImsCallModification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsCallModification$RttVtStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultState"
.end annotation


# instance fields
.field final synthetic this$1:Lorg/codeaurora/ims/ImsCallModification$RttVtStateMachine;


# direct methods
.method private constructor <init>(Lorg/codeaurora/ims/ImsCallModification$RttVtStateMachine;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1034
    iput-object p1, p0, Lorg/codeaurora/ims/ImsCallModification$RttVtStateMachine$DefaultState;->this$1:Lorg/codeaurora/ims/ImsCallModification$RttVtStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/codeaurora/ims/ImsCallModification$RttVtStateMachine;Lorg/codeaurora/ims/ImsCallModification-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallModification$RttVtStateMachine$DefaultState;-><init>(Lorg/codeaurora/ims/ImsCallModification$RttVtStateMachine;)V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 5

    .line 1037
    iget v0, p1, Landroid/os/Message;->what:I

    .line 1039
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification$RttVtStateMachine$DefaultState;->this$1:Lorg/codeaurora/ims/ImsCallModification$RttVtStateMachine;

    const/4 v2, 0x1

    .line 1037
    const-string v3, "RttVtSM "

    const/4 v4, 0x5

    if-eq v0, v4, :cond_0

    .line 1044
    iget-object v0, v1, Lorg/codeaurora/ims/ImsCallModification$RttVtStateMachine;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallModification$RttVtStateMachine$DefaultState;->this$1:Lorg/codeaurora/ims/ImsCallModification$RttVtStateMachine;

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallModification$RttVtStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": unexpected msg="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return v2

    .line 1039
    :cond_0
    iget-object p1, v1, Lorg/codeaurora/ims/ImsCallModification$RttVtStateMachine;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification$RttVtStateMachine$DefaultState;->this$1:Lorg/codeaurora/ims/ImsCallModification$RttVtStateMachine;

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsCallModification$RttVtStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": dual upgrade timed out, resetting to IdleState"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1041
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallModification$RttVtStateMachine$DefaultState;->this$1:Lorg/codeaurora/ims/ImsCallModification$RttVtStateMachine;

    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallModification$RttVtStateMachine;->mIdleState:Lcom/android/internal/util/State;

    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsCallModification$RttVtStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return v2
.end method
