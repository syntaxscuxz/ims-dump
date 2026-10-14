.class Lorg/codeaurora/ims/ImsConfigImpl$1;
.super Landroid/database/ContentObserver;
.source "ImsConfigImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsConfigImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/codeaurora/ims/ImsConfigImpl;


# direct methods
.method constructor <init>(Lorg/codeaurora/ims/ImsConfigImpl;Landroid/os/Handler;)V
    .locals 0
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

    .line 96
    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$1;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 99
    iget-object p0, p0, Lorg/codeaurora/ims/ImsConfigImpl$1;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsConfigImpl;->updateWFCMode(Z)I

    return-void
.end method
