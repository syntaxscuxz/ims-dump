.class Lorg/codeaurora/ims/ImsMultiEndpointImpl$1;
.super Ljava/lang/Object;
.source "ImsMultiEndpointImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/codeaurora/ims/ImsMultiEndpointImpl;->notifyViceInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/codeaurora/ims/ImsMultiEndpointImpl;


# direct methods
.method constructor <init>(Lorg/codeaurora/ims/ImsMultiEndpointImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 115
    iput-object p1, p0, Lorg/codeaurora/ims/ImsMultiEndpointImpl$1;->this$0:Lorg/codeaurora/ims/ImsMultiEndpointImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 118
    const-string v0, "ImsMultiEndpointImpl"

    const-string v1, "notifyViceInfoAsync"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object p0, p0, Lorg/codeaurora/ims/ImsMultiEndpointImpl$1;->this$0:Lorg/codeaurora/ims/ImsMultiEndpointImpl;

    invoke-static {p0}, Lorg/codeaurora/ims/ImsMultiEndpointImpl;->-$$Nest$mnotifyViceInfoAsync(Lorg/codeaurora/ims/ImsMultiEndpointImpl;)V

    return-void
.end method
