.class final Lcom/android/systemui/media/MediaCarouselController$inflateSettingsButton$2;
.super Ljava/lang/Object;
.source "MediaCarouselController.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/media/MediaCarouselController;->inflateSettingsButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/media/MediaCarouselController;


# direct methods
.method constructor <init>(Lcom/android/systemui/media/MediaCarouselController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/MediaCarouselController$inflateSettingsButton$2;->this$0:Lcom/android/systemui/media/MediaCarouselController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 214
    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselController$inflateSettingsButton$2;->this$0:Lcom/android/systemui/media/MediaCarouselController;

    invoke-static {p0}, Lcom/android/systemui/media/MediaCarouselController;->access$getActivityStarter$p(Lcom/android/systemui/media/MediaCarouselController;)Lcom/android/systemui/plugins/ActivityStarter;

    move-result-object p0

    invoke-static {}, Lcom/android/systemui/media/MediaCarouselControllerKt;->access$getSettingsIntent$p()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p0, p1, v0}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    return-void
.end method
