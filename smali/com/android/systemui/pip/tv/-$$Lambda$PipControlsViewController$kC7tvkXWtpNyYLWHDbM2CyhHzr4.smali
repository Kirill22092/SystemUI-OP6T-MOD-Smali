.class public final synthetic Lcom/android/systemui/pip/tv/-$$Lambda$PipControlsViewController$kC7tvkXWtpNyYLWHDbM2CyhHzr4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/graphics/drawable/Icon$OnDrawableLoadedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/pip/tv/PipControlButtonView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/pip/tv/PipControlButtonView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/pip/tv/-$$Lambda$PipControlsViewController$kC7tvkXWtpNyYLWHDbM2CyhHzr4;->f$0:Lcom/android/systemui/pip/tv/PipControlButtonView;

    return-void
.end method


# virtual methods
.method public final onDrawableLoaded(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pip/tv/-$$Lambda$PipControlsViewController$kC7tvkXWtpNyYLWHDbM2CyhHzr4;->f$0:Lcom/android/systemui/pip/tv/PipControlButtonView;

    invoke-static {p0, p1}, Lcom/android/systemui/pip/tv/PipControlsViewController;->lambda$updateUserActions$3(Lcom/android/systemui/pip/tv/PipControlButtonView;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
