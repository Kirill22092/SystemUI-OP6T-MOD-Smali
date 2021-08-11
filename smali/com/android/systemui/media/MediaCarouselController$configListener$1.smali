.class public final Lcom/android/systemui/media/MediaCarouselController$configListener$1;
.super Ljava/lang/Object;
.source "MediaCarouselController.kt"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/media/MediaCarouselController;-><init>(Landroid/content/Context;Ljavax/inject/Provider;Lcom/android/systemui/statusbar/notification/VisualStabilityManager;Lcom/android/systemui/media/MediaHostStatesManager;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/media/MediaDataFilter;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/plugins/FalsingManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/media/MediaCarouselController;


# direct methods
.method constructor <init>(Lcom/android/systemui/media/MediaCarouselController;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/media/MediaCarouselController$configListener$1;->this$0:Lcom/android/systemui/media/MediaCarouselController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselController$configListener$1;->this$0:Lcom/android/systemui/media/MediaCarouselController;

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {p0, v0}, Lcom/android/systemui/media/MediaCarouselController;->access$setRtl$p(Lcom/android/systemui/media/MediaCarouselController;Z)V

    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/media/MediaCarouselController$configListener$1;->this$0:Lcom/android/systemui/media/MediaCarouselController;

    invoke-static {v0}, Lcom/android/systemui/media/MediaCarouselController;->access$recreatePlayers(Lcom/android/systemui/media/MediaCarouselController;)V

    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselController$configListener$1;->this$0:Lcom/android/systemui/media/MediaCarouselController;

    invoke-static {p0}, Lcom/android/systemui/media/MediaCarouselController;->access$inflateSettingsButton(Lcom/android/systemui/media/MediaCarouselController;)V

    return-void
.end method

.method public onOverlayChanged()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselController$configListener$1;->this$0:Lcom/android/systemui/media/MediaCarouselController;

    invoke-static {p0}, Lcom/android/systemui/media/MediaCarouselController;->access$inflateSettingsButton(Lcom/android/systemui/media/MediaCarouselController;)V

    return-void
.end method
