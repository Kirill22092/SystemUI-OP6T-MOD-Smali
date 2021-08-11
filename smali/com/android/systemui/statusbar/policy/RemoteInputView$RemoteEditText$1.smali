.class Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText$1;
.super Ljava/lang/Object;
.source "RemoteInputView.java"

# interfaces
.implements Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText$1;->this$0:Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCommitContent(Landroidx/core/view/inputmethod/InputContentInfoCompat;ILandroid/os/Bundle;)Z
    .locals 0

    invoke-virtual {p1}, Landroidx/core/view/inputmethod/InputContentInfoCompat;->getContentUri()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1}, Landroidx/core/view/inputmethod/InputContentInfoCompat;->getDescription()Landroid/content/ClipDescription;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/ClipDescription;->getMimeTypeCount()I

    move-result p3

    if-lez p3, :cond_0

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/content/ClipDescription;->getMimeType(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    iget-object p3, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText$1;->this$0:Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;

    invoke-static {p3}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->access$200(Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;)Lcom/android/systemui/statusbar/policy/RemoteInputView;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->prepareRemoteInputFromData(Ljava/lang/String;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText$1;->this$0:Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;

    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->access$200(Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;)Lcom/android/systemui/statusbar/policy/RemoteInputView;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->access$100(Lcom/android/systemui/statusbar/policy/RemoteInputView;Landroid/content/Intent;)V

    :cond_1
    const/4 p0, 0x1

    return p0
.end method
