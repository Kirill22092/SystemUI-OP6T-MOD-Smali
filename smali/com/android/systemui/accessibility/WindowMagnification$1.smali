.class Lcom/android/systemui/accessibility/WindowMagnification$1;
.super Landroid/database/ContentObserver;
.source "WindowMagnification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/accessibility/WindowMagnification;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/accessibility/WindowMagnification;


# direct methods
.method constructor <init>(Lcom/android/systemui/accessibility/WindowMagnification;Landroid/os/Handler;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnification$1;->this$0:Lcom/android/systemui/accessibility/WindowMagnification;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/android/systemui/accessibility/WindowMagnification$1;->this$0:Lcom/android/systemui/accessibility/WindowMagnification;

    invoke-static {p0}, Lcom/android/systemui/accessibility/WindowMagnification;->access$000(Lcom/android/systemui/accessibility/WindowMagnification;)V

    return-void
.end method
