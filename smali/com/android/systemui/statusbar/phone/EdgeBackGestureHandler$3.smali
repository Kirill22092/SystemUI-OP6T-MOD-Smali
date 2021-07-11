.class Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$3;
.super Lcom/android/systemui/shared/system/TaskStackChangeListener;
.source "EdgeBackGestureHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$3;->this$0:Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;

    invoke-direct {p0}, Lcom/android/systemui/shared/system/TaskStackChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onTaskStackChanged()V
    .locals 1

    .line 166
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$3;->this$0:Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->access$700(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;)Z

    move-result v0

    invoke-static {p0, v0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->access$602(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;Z)Z

    return-void
.end method
