.class public final synthetic Lorg/codeaurora/ims/ImsServiceClassTracker$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/codeaurora/ims/ImsServiceClassTracker;

.field public final synthetic f$1:Ljava/util/concurrent/CompletableFuture;


# direct methods
.method public synthetic constructor <init>(Lorg/codeaurora/ims/ImsServiceClassTracker;Ljava/util/concurrent/CompletableFuture;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker$$ExternalSyntheticLambda2;->f$0:Lorg/codeaurora/ims/ImsServiceClassTracker;

    iput-object p2, p0, Lorg/codeaurora/ims/ImsServiceClassTracker$$ExternalSyntheticLambda2;->f$1:Ljava/util/concurrent/CompletableFuture;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker$$ExternalSyntheticLambda2;->f$0:Lorg/codeaurora/ims/ImsServiceClassTracker;

    iget-object p0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker$$ExternalSyntheticLambda2;->f$1:Ljava/util/concurrent/CompletableFuture;

    invoke-static {v0, p0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->$r8$lambda$axf-sXissO5l6_OvepQNIzWIrKM(Lorg/codeaurora/ims/ImsServiceClassTracker;Ljava/util/concurrent/CompletableFuture;)V

    return-void
.end method
