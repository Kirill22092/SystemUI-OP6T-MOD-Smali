.class public final Lcom/android/systemui/media/MediaViewController$configurationListener$1;
.super Ljava/lang/Object;
.source "MediaViewController.kt"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/media/MediaViewController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/media/MediaHostStatesManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMediaViewController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MediaViewController.kt\ncom/android/systemui/media/MediaViewController$configurationListener$1\n*L\n1#1,437:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/media/MediaViewController;


# direct methods
.method constructor <init>(Lcom/android/systemui/media/MediaViewController;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 128
    iput-object p1, p0, Lcom/android/systemui/media/MediaViewController$configurationListener$1;->this$0:Lcom/android/systemui/media/MediaViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_2

    .line 135
    iget-object v0, p0, Lcom/android/systemui/media/MediaViewController$configurationListener$1;->this$0:Lcom/android/systemui/media/MediaViewController;

    invoke-static {v0}, Lcom/android/systemui/media/MediaViewController;->access$getTransitionLayout$p(Lcom/android/systemui/media/MediaViewController;)Lcom/android/systemui/util/animation/TransitionLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getRawLayoutDirection()I

    move-result v0

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/media/MediaViewController$configurationListener$1;->this$0:Lcom/android/systemui/media/MediaViewController;

    invoke-static {v0}, Lcom/android/systemui/media/MediaViewController;->access$getTransitionLayout$p(Lcom/android/systemui/media/MediaViewController;)Lcom/android/systemui/util/animation/TransitionLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setLayoutDirection(I)V

    .line 137
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/media/MediaViewController$configurationListener$1;->this$0:Lcom/android/systemui/media/MediaViewController;

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaViewController;->refreshState()V

    :cond_2
    return-void
.end method
