.class Lcom/android/systemui/GuestResumeSessionReceiver$ResetSessionDialog;
.super Lcom/android/systemui/statusbar/phone/SystemUIDialog;
.source "GuestResumeSessionReceiver.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/GuestResumeSessionReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResetSessionDialog"
.end annotation


# instance fields
.field private final mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .line 159
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;)V

    .line 161
    sget v0, Lcom/android/systemui/R$string;->guest_wipe_session_title:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 162
    sget v0, Lcom/android/systemui/R$string;->guest_wipe_session_message:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    .line 163
    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 165
    sget v0, Lcom/android/systemui/R$string;->guest_wipe_session_wipe:I

    .line 166
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x2

    .line 165
    invoke-virtual {p0, v1, v0, p0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 167
    sget v0, Lcom/android/systemui/R$string;->guest_wipe_session_dontwipe:I

    .line 168
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, -0x1

    .line 167
    invoke-virtual {p0, v0, p1, p0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 170
    iput p2, p0, Lcom/android/systemui/GuestResumeSessionReceiver$ResetSessionDialog;->mUserId:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, -0x2

    if-ne p2, p1, :cond_0

    .line 176
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    iget p2, p0, Lcom/android/systemui/GuestResumeSessionReceiver$ResetSessionDialog;->mUserId:I

    invoke-static {p1, p2}, Lcom/android/systemui/GuestResumeSessionReceiver;->access$000(Landroid/content/Context;I)V

    .line 177
    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    .line 179
    invoke-virtual {p0}, Landroid/app/AlertDialog;->cancel()V

    :cond_1
    :goto_0
    return-void
.end method
