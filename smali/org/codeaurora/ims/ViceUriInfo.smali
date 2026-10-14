.class public final Lorg/codeaurora/ims/ViceUriInfo;
.super Ljava/lang/Object;
.source "ViceUriInfo.java"


# instance fields
.field private final mViceInfoUri:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lorg/codeaurora/ims/ViceUriInfo;->mViceInfoUri:[B

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-static {p1}, Lorg/codeaurora/ims/ImsUtils;->toByteArray(Ljava/util/ArrayList;)[B

    move-result-object p1

    iput-object p1, p0, Lorg/codeaurora/ims/ViceUriInfo;->mViceInfoUri:[B

    return-void
.end method


# virtual methods
.method public getViceInfoUri()[B
    .locals 0

    .line 24
    iget-object p0, p0, Lorg/codeaurora/ims/ViceUriInfo;->mViceInfoUri:[B

    return-object p0
.end method
