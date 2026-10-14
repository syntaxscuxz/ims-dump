.class public Lorg/codeaurora/ims/SuppSvcResponse$BarredLines;
.super Ljava/lang/Object;
.source "SuppSvcResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/SuppSvcResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BarredLines"
.end annotation


# instance fields
.field private mLines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/SuppSvcResponse$LineStatus;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceClass:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput p1, p0, Lorg/codeaurora/ims/SuppSvcResponse$BarredLines;->mServiceClass:I

    .line 124
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/codeaurora/ims/SuppSvcResponse$BarredLines;->mLines:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addLine(Lorg/codeaurora/ims/SuppSvcResponse$LineStatus;)V
    .locals 0

    .line 128
    iget-object p0, p0, Lorg/codeaurora/ims/SuppSvcResponse$BarredLines;->mLines:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getLines()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/SuppSvcResponse$LineStatus;",
            ">;"
        }
    .end annotation

    .line 132
    iget-object p0, p0, Lorg/codeaurora/ims/SuppSvcResponse$BarredLines;->mLines:Ljava/util/List;

    return-object p0
.end method
