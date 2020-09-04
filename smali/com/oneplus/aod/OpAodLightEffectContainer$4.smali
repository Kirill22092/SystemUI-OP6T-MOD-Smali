.class Lcom/oneplus/aod/OpAodLightEffectContainer$4;
.super Ljava/lang/Object;
.source "OpAodLightEffectContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/aod/OpAodLightEffectContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;


# direct methods
.method constructor <init>(Lcom/oneplus/aod/OpAodLightEffectContainer;)V
    .registers 2
    .param p1, "this$0"    # Lcom/oneplus/aod/OpAodLightEffectContainer;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer$4;->this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    const-wide/16 v8, 0x10

    const v6, -0x712901

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 184
    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer$4;->this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-static {v0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->access$000(Lcom/oneplus/aod/OpAodLightEffectContainer;)I

    move-result v0

    if-ltz v0, :cond_36

    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer$4;->this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-static {v0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->access$000(Lcom/oneplus/aod/OpAodLightEffectContainer;)I

    move-result v0

    iget-object v2, p0, Lcom/oneplus/aod/OpAodLightEffectContainer$4;->this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-static {v2}, Lcom/oneplus/aod/OpAodLightEffectContainer;->access$100(Lcom/oneplus/aod/OpAodLightEffectContainer;)[Landroid/graphics/Bitmap;

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_36

    .line 185
    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer$4;->this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-static {v0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->access$200(Lcom/oneplus/aod/OpAodLightEffectContainer;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v2, p0, Lcom/oneplus/aod/OpAodLightEffectContainer$4;->this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-static {v2}, Lcom/oneplus/aod/OpAodLightEffectContainer;->access$100(Lcom/oneplus/aod/OpAodLightEffectContainer;)[Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/aod/OpAodLightEffectContainer$4;->this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-static {v3}, Lcom/oneplus/aod/OpAodLightEffectContainer;->access$000(Lcom/oneplus/aod/OpAodLightEffectContainer;)I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 187
    :cond_36
    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer$4;->this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-static {v0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->access$000(Lcom/oneplus/aod/OpAodLightEffectContainer;)I

    move-result v0

    if-ltz v0, :cond_64

    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer$4;->this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-static {v0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->access$000(Lcom/oneplus/aod/OpAodLightEffectContainer;)I

    move-result v0

    iget-object v2, p0, Lcom/oneplus/aod/OpAodLightEffectContainer$4;->this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-static {v2}, Lcom/oneplus/aod/OpAodLightEffectContainer;->access$300(Lcom/oneplus/aod/OpAodLightEffectContainer;)[Landroid/graphics/Bitmap;

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_64

    .line 188
    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer$4;->this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-static {v0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->access$400(Lcom/oneplus/aod/OpAodLightEffectContainer;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v2, p0, Lcom/oneplus/aod/OpAodLightEffectContainer$4;->this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-static {v2}, Lcom/oneplus/aod/OpAodLightEffectContainer;->access$300(Lcom/oneplus/aod/OpAodLightEffectContainer;)[Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/aod/OpAodLightEffectContainer$4;->this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-static {v3}, Lcom/oneplus/aod/OpAodLightEffectContainer;->access$000(Lcom/oneplus/aod/OpAodLightEffectContainer;)I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 190
    :cond_64
    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer$4;->this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-static {v0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->access$000(Lcom/oneplus/aod/OpAodLightEffectContainer;)I

    move-result v0

    const/16 v2, 0x64

    if-ge v0, v2, :cond_f3

    .line 191
    const-string v0, "sys.aod.app_color_unlock"

    invoke-static {v0, v5}, Lcom/android/wubydax/GearUtils;->getDbIntForKey(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v4, :cond_7e

    const-string v0, "sys.aod.custom_color_unlock"

    invoke-static {v0, v5}, Lcom/android/wubydax/GearUtils;->getDbIntForKey(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_e0

    .line 192
    :cond_7e
    const-string v0, "sys.aod.app_color_unlock"

    invoke-static {v0, v5}, Lcom/android/wubydax/GearUtils;->getDbIntForKey(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_b5

    .line 193
    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer$4;->this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-static {v0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->access$200(Lcom/oneplus/aod/OpAodLightEffectContainer;)Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lcom/oneplus/aod/OpSingleNotificationView;->mAppIconColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 194
    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer$4;->this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-static {v0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->access$400(Lcom/oneplus/aod/OpAodLightEffectContainer;)Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lcom/oneplus/aod/OpSingleNotificationView;->mAppIconColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 204
    :cond_a0
    :goto_a0
    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer$4;->this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-static {v0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->access$600(Lcom/oneplus/aod/OpAodLightEffectContainer;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer$4;->this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-static {v1}, Lcom/oneplus/aod/OpAodLightEffectContainer;->access$500(Lcom/oneplus/aod/OpAodLightEffectContainer;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 217
    :cond_af
    :goto_af
    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer$4;->this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-static {v0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->access$008(Lcom/oneplus/aod/OpAodLightEffectContainer;)I

    .line 218
    return-void

    .line 195
    :cond_b5
    const-string v0, "sys.aod.custom_color_unlock"

    invoke-static {v0, v5}, Lcom/android/wubydax/GearUtils;->getDbIntForKey(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_a0

    .line 196
    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer$4;->this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-static {v0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->access$200(Lcom/oneplus/aod/OpAodLightEffectContainer;)Landroid/widget/ImageView;

    move-result-object v0

    const-string v1, "tweaks_left_edge_notif_color"

    invoke-static {v1, v6}, Lcom/android/wubydax/GearUtils;->getDbIntForKey(Ljava/lang/String;I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 197
    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer$4;->this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-static {v0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->access$400(Lcom/oneplus/aod/OpAodLightEffectContainer;)Landroid/widget/ImageView;

    move-result-object v0

    const-string v1, "tweaks_right_edge_notif_color"

    invoke-static {v1, v6}, Lcom/android/wubydax/GearUtils;->getDbIntForKey(Ljava/lang/String;I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_a0

    .line 201
    :cond_e0
    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer$4;->this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-static {v0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->access$200(Lcom/oneplus/aod/OpAodLightEffectContainer;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 202
    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer$4;->this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-static {v0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->access$400(Lcom/oneplus/aod/OpAodLightEffectContainer;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_a0

    .line 207
    :cond_f3
    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer$4;->this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-static {v0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->access$200(Lcom/oneplus/aod/OpAodLightEffectContainer;)Landroid/widget/ImageView;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 208
    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer$4;->this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-static {v0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->access$400(Lcom/oneplus/aod/OpAodLightEffectContainer;)Landroid/widget/ImageView;

    move-result-object v0

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 209
    const-string v0, "tweaks_edge_notif_repeat_count"

    invoke-static {v0, v4}, Lcom/android/wubydax/GearUtils;->getDbIntForKey(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_117

    .line 210
    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer$4;->this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-static {v0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->access$708(Lcom/oneplus/aod/OpAodLightEffectContainer;)I

    .line 212
    :cond_117
    const-string v0, "tweaks_edge_notif_repeat_count"

    invoke-static {v0, v4}, Lcom/android/wubydax/GearUtils;->getDbIntForKey(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_12d

    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer$4;->this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-static {v0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->access$700(Lcom/oneplus/aod/OpAodLightEffectContainer;)I

    move-result v0

    const-string v1, "tweaks_edge_notif_repeat_count"

    invoke-static {v1, v4}, Lcom/android/wubydax/GearUtils;->getDbIntForKey(Ljava/lang/String;I)I

    move-result v1

    if-gt v0, v1, :cond_af

    .line 213
    :cond_12d
    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer$4;->this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/oneplus/aod/OpAodLightEffectContainer;->access$002(Lcom/oneplus/aod/OpAodLightEffectContainer;I)I

    .line 214
    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer$4;->this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-static {v0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->access$600(Lcom/oneplus/aod/OpAodLightEffectContainer;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer$4;->this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-static {v1}, Lcom/oneplus/aod/OpAodLightEffectContainer;->access$500(Lcom/oneplus/aod/OpAodLightEffectContainer;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_af
.end method
