.class Lcom/oneplus/anim/OpGraphLight$1;
.super Landroid/view/OrientationEventListener;
.source "OpGraphLight.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/anim/OpGraphLight;-><init>(Landroid/view/WindowManager;Landroid/content/Context;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/anim/OpGraphLight;


# direct methods
.method constructor <init>(Lcom/oneplus/anim/OpGraphLight;Landroid/content/Context;I)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/oneplus/anim/OpGraphLight$1;->this$0:Lcom/oneplus/anim/OpGraphLight;

    invoke-direct {p0, p2, p3}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 137
    iget-object p1, p0, Lcom/oneplus/anim/OpGraphLight$1;->this$0:Lcom/oneplus/anim/OpGraphLight;

    invoke-static {p1}, Lcom/oneplus/anim/OpGraphLight;->access$000(Lcom/oneplus/anim/OpGraphLight;)Landroid/widget/ImageView;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/anim/OpGraphLight$1;->this$0:Lcom/oneplus/anim/OpGraphLight;

    invoke-static {p1}, Lcom/oneplus/anim/OpGraphLight;->access$000(Lcom/oneplus/anim/OpGraphLight;)Landroid/widget/ImageView;

    move-result-object p1

    instance-of p1, p1, Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;

    if-eqz p1, :cond_0

    .line 138
    iget-object p0, p0, Lcom/oneplus/anim/OpGraphLight$1;->this$0:Lcom/oneplus/anim/OpGraphLight;

    invoke-static {p0}, Lcom/oneplus/anim/OpGraphLight;->access$000(Lcom/oneplus/anim/OpGraphLight;)Landroid/widget/ImageView;

    move-result-object p0

    check-cast p0, Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;

    invoke-virtual {p0}, Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;->checkOrientationType()Z

    :cond_0
    return-void
.end method
