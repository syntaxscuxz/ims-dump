.class public final synthetic Lorg/codeaurora/ims/ImsServiceClassTracker$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lorg/codeaurora/ims/ImsServiceClassTracker;

.field public final synthetic f$1:Lorg/codeaurora/ims/ImsCallSessionImpl;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lorg/codeaurora/ims/ImsServiceClassTracker;Lorg/codeaurora/ims/ImsCallSessionImpl;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker$$ExternalSyntheticLambda1;->f$0:Lorg/codeaurora/ims/ImsServiceClassTracker;

    iput-object p2, p0, Lorg/codeaurora/ims/ImsServiceClassTracker$$ExternalSyntheticLambda1;->f$1:Lorg/codeaurora/ims/ImsCallSessionImpl;

    iput-boolean p3, p0, Lorg/codeaurora/ims/ImsServiceClassTracker$$ExternalSyntheticLambda1;->f$2:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker$$ExternalSyntheticLambda1;->f$0:Lorg/codeaurora/ims/ImsServiceClassTracker;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker$$ExternalSyntheticLambda1;->f$1:Lorg/codeaurora/ims/ImsCallSessionImpl;

    iget-boolean p0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker$$ExternalSyntheticLambda1;->f$2:Z

    invoke-static {v0, v1, p0, p1, p2}, Lorg/codeaurora/ims/ImsServiceClassTracker;->$r8$lambda$RF9if4zQDP-w8LzdVGfCMPoIsus(Lorg/codeaurora/ims/ImsServiceClassTracker;Lorg/codeaurora/ims/ImsCallSessionImpl;ZLjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
