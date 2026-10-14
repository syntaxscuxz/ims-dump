.class public final Lorg/codeaurora/ims/EcnamInfo;
.super Ljava/lang/Object;
.source "EcnamInfo.java"


# instance fields
.field private mCardUrl:Landroid/net/Uri;

.field private mIconUrl:Landroid/net/Uri;

.field private mInfoUrl:Landroid/net/Uri;

.field private mName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lorg/codeaurora/ims/EcnamInfo;->mName:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lorg/codeaurora/ims/EcnamInfo;->mIconUrl:Landroid/net/Uri;

    .line 33
    iput-object p3, p0, Lorg/codeaurora/ims/EcnamInfo;->mInfoUrl:Landroid/net/Uri;

    .line 34
    iput-object p4, p0, Lorg/codeaurora/ims/EcnamInfo;->mCardUrl:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public getCardUrl()Landroid/net/Uri;
    .locals 0

    .line 62
    iget-object p0, p0, Lorg/codeaurora/ims/EcnamInfo;->mCardUrl:Landroid/net/Uri;

    return-object p0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 0

    .line 41
    iget-object p0, p0, Lorg/codeaurora/ims/EcnamInfo;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public getIconUrl()Landroid/net/Uri;
    .locals 0

    .line 48
    iget-object p0, p0, Lorg/codeaurora/ims/EcnamInfo;->mIconUrl:Landroid/net/Uri;

    return-object p0
.end method

.method public getInfoUrl()Landroid/net/Uri;
    .locals 0

    .line 55
    iget-object p0, p0, Lorg/codeaurora/ims/EcnamInfo;->mInfoUrl:Landroid/net/Uri;

    return-object p0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 3

    .line 69
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 70
    iget-object v1, p0, Lorg/codeaurora/ims/EcnamInfo;->mName:Ljava/lang/String;

    if-nez v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 71
    :cond_0
    const-string v1, "call_ecnam_display_name"

    iget-object v2, p0, Lorg/codeaurora/ims/EcnamInfo;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    :cond_1
    iget-object v1, p0, Lorg/codeaurora/ims/EcnamInfo;->mIconUrl:Landroid/net/Uri;

    if-eqz v1, :cond_2

    .line 74
    const-string v2, "call_ecnam_icon"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 76
    :cond_2
    iget-object v1, p0, Lorg/codeaurora/ims/EcnamInfo;->mInfoUrl:Landroid/net/Uri;

    if-eqz v1, :cond_3

    .line 77
    const-string v2, "call_ecnam_info"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 79
    :cond_3
    iget-object p0, p0, Lorg/codeaurora/ims/EcnamInfo;->mCardUrl:Landroid/net/Uri;

    if-eqz p0, :cond_4

    .line 80
    const-string v1, "call_ecnam_card"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_4
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EcnamInfo Name: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/codeaurora/ims/EcnamInfo;->mName:Ljava/lang/String;

    invoke-static {v1}, Lcom/qualcomm/ims/utils/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " IconUrl: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/EcnamInfo;->mIconUrl:Landroid/net/Uri;

    invoke-static {v1}, Lcom/qualcomm/ims/utils/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " InfoUrl: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/EcnamInfo;->mInfoUrl:Landroid/net/Uri;

    .line 87
    invoke-static {v1}, Lcom/qualcomm/ims/utils/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " CardUrl: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/codeaurora/ims/EcnamInfo;->mCardUrl:Landroid/net/Uri;

    invoke-static {p0}, Lcom/qualcomm/ims/utils/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
