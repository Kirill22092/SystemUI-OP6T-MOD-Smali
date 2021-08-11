.class final Lcom/android/systemui/util/RelativeTouchListener$onTouch$1;
.super Ljava/lang/Object;
.source "RelativeTouchListener.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/util/RelativeTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $v:Landroid/view/View;

.field final synthetic this$0:Lcom/android/systemui/util/RelativeTouchListener;


# direct methods
.method constructor <init>(Lcom/android/systemui/util/RelativeTouchListener;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/util/RelativeTouchListener$onTouch$1;->this$0:Lcom/android/systemui/util/RelativeTouchListener;

    iput-object p2, p0, Lcom/android/systemui/util/RelativeTouchListener$onTouch$1;->$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/util/RelativeTouchListener$onTouch$1;->$v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isLongClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/util/RelativeTouchListener$onTouch$1;->this$0:Lcom/android/systemui/util/RelativeTouchListener;

    iget-object p0, p0, Lcom/android/systemui/util/RelativeTouchListener$onTouch$1;->$v:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->performLongClick()Z

    move-result p0

    invoke-static {v0, p0}, Lcom/android/systemui/util/RelativeTouchListener;->access$setPerformedLongClick$p(Lcom/android/systemui/util/RelativeTouchListener;Z)V

    :cond_0
    return-void
.end method
