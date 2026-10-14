.class Lorg/codeaurora/ims/ImsServiceClassTracker$2;
.super Lorg/codeaurora/ims/QImsSessionBase$ListenerBase;
.source "ImsServiceClassTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsServiceClassTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/codeaurora/ims/ImsServiceClassTracker;


# direct methods
.method constructor <init>(Lorg/codeaurora/ims/ImsServiceClassTracker;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 127
    iput-object p1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker$2;->this$0:Lorg/codeaurora/ims/ImsServiceClassTracker;

    invoke-direct {p0}, Lorg/codeaurora/ims/QImsSessionBase$ListenerBase;-><init>()V

    return-void
.end method


# virtual methods
.method public onClosed(Lorg/codeaurora/ims/QImsSessionBase;)V
    .locals 0

    .line 130
    iget-object p0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker$2;->this$0:Lorg/codeaurora/ims/ImsServiceClassTracker;

    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->onUssdClosed(Lorg/codeaurora/ims/QImsSessionBase;)V

    return-void
.end method
