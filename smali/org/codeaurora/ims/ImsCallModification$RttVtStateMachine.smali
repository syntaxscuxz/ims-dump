.class public Lorg/codeaurora/ims/ImsCallModification$RttVtStateMachine;
.super Lcom/android/internal/util/StateMachine;
.source "ImsCallModification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsCallModification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RttVtStateMachine"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/ims/ImsCallModification$RttVtStateMachine$DefaultState;,
        Lorg/codeaurora/ims/ImsCallModification$RttVtStateMachine$IdleState;,
        Lorg/codeaurora/ims/ImsCallModification$RttVtStateMachine$PendingState;,
        Lorg/codeaurora/ims/ImsCallModification$RttVtStateMachine$RttSuppressedState;,
        Lorg/codeaurora/ims/ImsCallModification$RttVtStateMachine$VtSentState;,
        Lorg/codeaurora/ims/ImsCallModification$RttVtStateMachine$VtRespondedState;,
        Lorg/codeaurora/ims/ImsCallModification$RttVtStateMachine$BothHandledState;
    }
.end annotation


# static fields
.field public static final CMD_DUAL_UPGRADE:I = 0x1

.field public static final CMD_RACE_TIMEOUT:I = 0x5

.field public static final CMD_RTT_REQUEST:I = 0x2

.field public static final CMD_VT_REQUEST:I = 0x3

.field public static final CMD_VT_RESPONSE:I = 0x4


# instance fields
.field final mBothHandledState:Lcom/android/internal/util/State;

.field final mDefaultState:Lcom/android/internal/util/State;

.field final mIdleState:Lcom/android/internal/util/State;

.field final mPendingState:Lcom/android/internal/util/State;

.field final mRttSuppressedState:Lcom/android/internal/util/State;

.field final mVtRespondedState:Lcom/android/internal/util/State;

.field final mVtSentState:Lcom/android/internal/util/State;

.field final synthetic this$0:Lorg/codeaurora/ims/ImsCallModification;


# direct methods
.method constructor <init>(Lorg/codeaurora/ims/ImsCallModification;Landroid/os/Looper;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1007
    iput-object p1, p0, Lorg/codeaurora/ims/ImsCallModification$RttVtStateMachine;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    .line 1008
    const-string p1, "RttVtStateMachine"

    invoke-direct {p0, p1, p2}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    .line 999
    new-instance p1, Lorg/codeaurora/ims/ImsCallModification$RttVtStateMachine$DefaultState;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lorg/codeaurora/ims/ImsCallModification$RttVtStateMachine$DefaultState;-><init>(Lorg/codeaurora/ims/ImsCallModification$RttVtStateMachine;Lorg/codeaurora/ims/ImsCallModification-IA;)V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsCallModification$RttVtStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    .line 1000
    new-instance v0, Lorg/codeaurora/ims/ImsCallModification$RttVtStateMachine$IdleState;

    invoke-direct {v0, p0, p2}, Lorg/codeaurora/ims/ImsCallModification$RttVtStateMachine$IdleState;-><init>(Lorg/codeaurora/ims/ImsCallModification$RttVtStateMachine;Lorg/codeaurora/ims/ImsCallModification-IA;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallModification$RttVtStateMachine;->mIdleState:Lcom/android/internal/util/State;

    .line 1001
    new-instance v1, Lorg/codeaurora/ims/ImsCallModification$RttVtStateMachine$PendingState;

    invoke-direct {v1, p0, p2}, Lorg/codeaurora/ims/ImsCallModification$RttVtStateMachine$PendingState;-><init>(Lorg/codeaurora/ims/ImsCallModification$RttVtStateMachine;Lorg/codeaurora/ims/ImsCallModification-IA;)V

    iput-object v1, p0, Lorg/codeaurora/ims/ImsCallModification$RttVtStateMachine;->mPendingState:Lcom/android/internal/util/State;

    .line 1002
    new-instance v2, Lorg/codeaurora/ims/ImsCallModification$RttVtStateMachine$RttSuppressedState;

    invoke-direct {v2, p0, p2}, Lorg/codeaurora/ims/ImsCallModification$RttVtStateMachine$RttSuppressedState;-><init>(Lorg/codeaurora/ims/ImsCallModification$RttVtStateMachine;Lorg/codeaurora/ims/ImsCallModification-IA;)V

    iput-object v2, p0, Lorg/codeaurora/ims/ImsCallModification$RttVtStateMachine;->mRttSuppressedState:Lcom/android/internal/util/State;

    .line 1003
    new-instance v3, Lorg/codeaurora/ims/ImsCallModification$RttVtStateMachine$VtSentState;

    invoke-direct {v3, p0, p2}, Lorg/codeaurora/ims/ImsCallModification$RttVtStateMachine$VtSentState;-><init>(Lorg/codeaurora/ims/ImsCallModification$RttVtStateMachine;Lorg/codeaurora/ims/ImsCallModification-IA;)V

    iput-object v3, p0, Lorg/codeaurora/ims/ImsCallModification$RttVtStateMachine;->mVtSentState:Lcom/android/internal/util/State;

    .line 1004
    new-instance v4, Lorg/codeaurora/ims/ImsCallModification$RttVtStateMachine$VtRespondedState;

    invoke-direct {v4, p0, p2}, Lorg/codeaurora/ims/ImsCallModification$RttVtStateMachine$VtRespondedState;-><init>(Lorg/codeaurora/ims/ImsCallModification$RttVtStateMachine;Lorg/codeaurora/ims/ImsCallModification-IA;)V

    iput-object v4, p0, Lorg/codeaurora/ims/ImsCallModification$RttVtStateMachine;->mVtRespondedState:Lcom/android/internal/util/State;

    .line 1005
    new-instance v5, Lorg/codeaurora/ims/ImsCallModification$RttVtStateMachine$BothHandledState;

    invoke-direct {v5, p0, p2}, Lorg/codeaurora/ims/ImsCallModification$RttVtStateMachine$BothHandledState;-><init>(Lorg/codeaurora/ims/ImsCallModification$RttVtStateMachine;Lorg/codeaurora/ims/ImsCallModification-IA;)V

    iput-object v5, p0, Lorg/codeaurora/ims/ImsCallModification$RttVtStateMachine;->mBothHandledState:Lcom/android/internal/util/State;

    .line 1009
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsCallModification$RttVtStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 1010
    invoke-virtual {p0, v0, p1}, Lorg/codeaurora/ims/ImsCallModification$RttVtStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1011
    invoke-virtual {p0, v1, p1}, Lorg/codeaurora/ims/ImsCallModification$RttVtStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1012
    invoke-virtual {p0, v2, p1}, Lorg/codeaurora/ims/ImsCallModification$RttVtStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1013
    invoke-virtual {p0, v3, p1}, Lorg/codeaurora/ims/ImsCallModification$RttVtStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1014
    invoke-virtual {p0, v4, p1}, Lorg/codeaurora/ims/ImsCallModification$RttVtStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1015
    invoke-virtual {p0, v5, p1}, Lorg/codeaurora/ims/ImsCallModification$RttVtStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1016
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsCallModification$RttVtStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    .line 1017
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallModification$RttVtStateMachine;->start()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 1031
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallModification$RttVtStateMachine;->quit()V

    return-void
.end method

.method isIdle()Z
    .locals 1

    .line 1021
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallModification$RttVtStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1022
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallModification$RttVtStateMachine;->mIdleState:Lcom/android/internal/util/State;

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method shouldInvertRtt()Z
    .locals 2

    .line 1026
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallModification$RttVtStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    .line 1027
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification$RttVtStateMachine;->mPendingState:Lcom/android/internal/util/State;

    if-eq v0, v1, :cond_1

    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallModification$RttVtStateMachine;->mRttSuppressedState:Lcom/android/internal/util/State;

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
