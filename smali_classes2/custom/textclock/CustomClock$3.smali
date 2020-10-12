.class Lcustom/textclock/CustomClock$3;
.super Ljava/lang/Object;
.source "CustomClock.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcustom/textclock/CustomClock;->onTimeChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcustom/textclock/CustomClock;

.field final synthetic val$spannableString:Landroid/text/SpannableString;


# direct methods
.method constructor <init>(Lcustom/textclock/CustomClock;Landroid/text/SpannableString;)V
    .locals 0
    .param p1, "this$0"    # Lcustom/textclock/CustomClock;

    .prologue
    .line 143
    iput-object p1, p0, Lcustom/textclock/CustomClock$3;->this$0:Lcustom/textclock/CustomClock;

    iput-object p2, p0, Lcustom/textclock/CustomClock$3;->val$spannableString:Landroid/text/SpannableString;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 9
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 145
    iget-object v0, p0, Lcustom/textclock/CustomClock$3;->this$0:Lcustom/textclock/CustomClock;

    .line 146
    .local v0, "this$0":Lcustom/textclock/CustomClock;
    iget-object v2, p0, Lcustom/textclock/CustomClock$3;->val$spannableString:Landroid/text/SpannableString;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/CharSequence;

    iget-object v4, p0, Lcustom/textclock/CustomClock$3;->this$0:Lcustom/textclock/CustomClock;

    invoke-static {v4}, Lcustom/textclock/CustomClock;->access$000(Lcustom/textclock/CustomClock;)Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f11078a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v3, v7

    const/4 v4, 0x1

    invoke-static {v0}, Lcustom/textclock/CustomClock;->access$100(Lcustom/textclock/CustomClock;)[Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcustom/textclock/CustomClock$3;->this$0:Lcustom/textclock/CustomClock;

    invoke-static {v6}, Lcustom/textclock/CustomClock;->access$600(Lcustom/textclock/CustomClock;)I

    move-result v6

    aget-object v5, v5, v6

    aput-object v5, v3, v4

    iget-object v4, p0, Lcustom/textclock/CustomClock$3;->this$0:Lcustom/textclock/CustomClock;

    invoke-static {v4}, Lcustom/textclock/CustomClock;->access$200(Lcustom/textclock/CustomClock;)[Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcustom/textclock/CustomClock$3;->this$0:Lcustom/textclock/CustomClock;

    invoke-static {v5}, Lcustom/textclock/CustomClock;->access$700(Lcustom/textclock/CustomClock;)I

    move-result v5

    aget-object v4, v4, v5

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcustom/textclock/CustomClock;->setText(Ljava/lang/CharSequence;)V

    .line 147
    iget-object v2, p0, Lcustom/textclock/CustomClock$3;->this$0:Lcustom/textclock/CustomClock;

    const-string v3, "text.clock_color"

    const v4, -0xb6a00

    invoke-static {v3, v4}, Lcom/android/wubydax/GearUtils;->getDbIntForKey(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcustom/textclock/CustomClock;->setTextColor(I)V

    .line 148
    iget-object v2, p0, Lcustom/textclock/CustomClock$3;->this$0:Lcustom/textclock/CustomClock;

    const-string v3, "text.clock_size"

    const/16 v4, 0x22

    invoke-static {v3, v4}, Lcom/android/wubydax/GearUtils;->getDbIntForKey(Ljava/lang/String;I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v8, v3}, Lcustom/textclock/CustomClock;->setTextSize(IF)V

    .line 149
    iget-object v2, p0, Lcustom/textclock/CustomClock$3;->this$0:Lcustom/textclock/CustomClock;

    const-string v3, "text.clock_padding_left"

    const/16 v4, 0x28

    invoke-static {v3, v4}, Lcom/android/wubydax/GearUtils;->getDbIntForKey(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "text.clock_padding_top"

    const/16 v5, 0xc8

    invoke-static {v4, v5}, Lcom/android/wubydax/GearUtils;->getDbIntForKey(Ljava/lang/String;I)I

    move-result v4

    const-string v5, "text.clock_padding_right"

    invoke-static {v5, v7}, Lcom/android/wubydax/GearUtils;->getDbIntForKey(Ljava/lang/String;I)I

    move-result v5

    const-string v6, "text.clock_padding_bottom"

    invoke-static {v6, v7}, Lcom/android/wubydax/GearUtils;->getDbIntForKey(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcustom/textclock/CustomClock;->setPadding(IIII)V

    .line 150
    iget-object v1, p0, Lcustom/textclock/CustomClock$3;->this$0:Lcustom/textclock/CustomClock;

    .line 151
    .local v1, "this$2":Lcustom/textclock/CustomClock;
    invoke-static {v1}, Lcustom/textclock/CustomClock;->access$800(Lcustom/textclock/CustomClock;)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcustom/textclock/CustomClock;->startAnimation(Landroid/view/animation/Animation;)V

    .line 152
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 155
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 158
    return-void
.end method
