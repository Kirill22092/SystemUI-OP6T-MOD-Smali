.class public final synthetic Lcom/android/systemui/statusbar/notification/row/-$$Lambda$YDw8IXhiUvHyYCObyXXnYJSdUnc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/DoubleTapHelper$DoubleTapListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$YDw8IXhiUvHyYCObyXXnYJSdUnc;->f$0:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    return-void
.end method


# virtual methods
.method public final onDoubleTap()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$YDw8IXhiUvHyYCObyXXnYJSdUnc;->f$0:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    move-result p0

    return p0
.end method
