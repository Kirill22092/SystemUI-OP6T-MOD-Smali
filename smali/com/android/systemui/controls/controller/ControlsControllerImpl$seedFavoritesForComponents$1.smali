.class final Lcom/android/systemui/controls/controller/ControlsControllerImpl$seedFavoritesForComponents$1;
.super Ljava/lang/Object;
.source "ControlsControllerImpl.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/controller/ControlsControllerImpl;->seedFavoritesForComponents(Ljava/util/List;Ljava/util/function/Consumer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $callback:Ljava/util/function/Consumer;

.field final synthetic $componentNames:Ljava/util/List;

.field final synthetic this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/controls/controller/ControlsControllerImpl;Ljava/util/List;Ljava/util/function/Consumer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$seedFavoritesForComponents$1;->this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    iput-object p2, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$seedFavoritesForComponents$1;->$componentNames:Ljava/util/List;

    iput-object p3, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$seedFavoritesForComponents$1;->$callback:Ljava/util/function/Consumer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$seedFavoritesForComponents$1;->this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$seedFavoritesForComponents$1;->$componentNames:Ljava/util/List;

    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$seedFavoritesForComponents$1;->$callback:Ljava/util/function/Consumer;

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->seedFavoritesForComponents(Ljava/util/List;Ljava/util/function/Consumer;)V

    return-void
.end method
