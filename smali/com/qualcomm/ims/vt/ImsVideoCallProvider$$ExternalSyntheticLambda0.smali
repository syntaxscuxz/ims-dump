.class public final synthetic Lcom/qualcomm/ims/vt/ImsVideoCallProvider$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/qualcomm/ims/vt/ImsVideoCallProvider;

.field public final synthetic f$1:Landroid/telecom/VideoProfile$CameraCapabilities;


# direct methods
.method public synthetic constructor <init>(Lcom/qualcomm/ims/vt/ImsVideoCallProvider;Landroid/telecom/VideoProfile$CameraCapabilities;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProvider$$ExternalSyntheticLambda0;->f$0:Lcom/qualcomm/ims/vt/ImsVideoCallProvider;

    iput-object p2, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProvider$$ExternalSyntheticLambda0;->f$1:Landroid/telecom/VideoProfile$CameraCapabilities;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProvider$$ExternalSyntheticLambda0;->f$0:Lcom/qualcomm/ims/vt/ImsVideoCallProvider;

    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProvider$$ExternalSyntheticLambda0;->f$1:Landroid/telecom/VideoProfile$CameraCapabilities;

    check-cast p1, Lorg/codeaurora/ims/internal/IVideoCallProviderListener;

    invoke-static {v0, p0, p1}, Lcom/qualcomm/ims/vt/ImsVideoCallProvider;->$r8$lambda$xmUJ4YVm0NZ9iGyddU7pEIv84vo(Lcom/qualcomm/ims/vt/ImsVideoCallProvider;Landroid/telecom/VideoProfile$CameraCapabilities;Lorg/codeaurora/ims/internal/IVideoCallProviderListener;)V

    return-void
.end method
