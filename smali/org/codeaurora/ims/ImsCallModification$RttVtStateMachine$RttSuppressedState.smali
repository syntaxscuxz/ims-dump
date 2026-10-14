.class Lorg/codeaurora/ims/ImsCallModification$RttVtStateMachine$RttSuppressedState;
.super Lcom/android/internal/util/State;
.source "ImsCallModification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsCallModification$RttVtStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RttSuppressedState"
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

    .line 1092
    iput-object p1, p0, Lorg/codeaurora/ims/ImsCallModification$RttVtStateMachine$RttSuppressedState;->this$1:Lorg/codeaurora/ims/ImsCallModification$RttVtStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/codeaurora/ims/ImsCallModification$RttVtStateMachine;Lorg/codeaurora/ims/ImsCallModification-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallModification$RttVtStateMachine$RttSuppressedState;-><init>(Lorg/codeaurora/ims/ImsCallModification$RttVtStateMachine;)V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 1

    .line 1095
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1097
    :cond_0
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallModification$RttVtStateMachine$RttSuppressedState;->this$1:Lorg/codeaurora/ims/ImsCallModification$RttVtStateMachine;

    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallModification$RttVtStateMachine;->mBothHandledState:Lcom/android/internal/util/State;

    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsCallModification$RttVtStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    const/4 p0, 0x1

    return p0
.end method
