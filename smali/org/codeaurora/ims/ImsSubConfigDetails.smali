.class public Lorg/codeaurora/ims/ImsSubConfigDetails;
.super Ljava/lang/Object;
.source "ImsSubConfigDetails.java"


# instance fields
.field private final mImsStackEnabled:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mSimultStackCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lorg/codeaurora/ims/ImsSubConfigDetails;->mSimultStackCount:I

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSubConfigDetails;->mImsStackEnabled:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addImsStackEnabled(Z)V
    .locals 0

    .line 45
    iget-object p0, p0, Lorg/codeaurora/ims/ImsSubConfigDetails;->mImsStackEnabled:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getImsStackEnabledList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 49
    iget-object p0, p0, Lorg/codeaurora/ims/ImsSubConfigDetails;->mImsStackEnabled:Ljava/util/List;

    return-object p0
.end method

.method public getSimultStackCount()I
    .locals 0

    .line 41
    iget p0, p0, Lorg/codeaurora/ims/ImsSubConfigDetails;->mSimultStackCount:I

    return p0
.end method

.method public setSimultStackCount(I)V
    .locals 0

    .line 37
    iput p1, p0, Lorg/codeaurora/ims/ImsSubConfigDetails;->mSimultStackCount:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ImsSubConfigDetails simultStackCount: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/codeaurora/ims/ImsSubConfigDetails;->mSimultStackCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mImsStackEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/codeaurora/ims/ImsSubConfigDetails;->mImsStackEnabled:Ljava/util/List;

    .line 55
    invoke-interface {p0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
