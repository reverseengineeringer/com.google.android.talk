.class Lcom/google/android/talk/AlertNotificationFullScreenActivity$7;
.super Ljava/lang/Object;
.source "AlertNotificationFullScreenActivity.java"

# interfaces
.implements Lcom/google/android/talk/ContactInfoQuery$ContactInfoQueryCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/AlertNotificationFullScreenActivity;->loadContactInfoAndShowDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/AlertNotificationFullScreenActivity;

.field final synthetic val$contactInfoQuery:Lcom/google/android/talk/ContactInfoQuery;

.field final synthetic val$existingCallNickQuery:Lcom/google/android/talk/ContactInfoQuery;


# direct methods
.method constructor <init>(Lcom/google/android/talk/AlertNotificationFullScreenActivity;Lcom/google/android/talk/ContactInfoQuery;Lcom/google/android/talk/ContactInfoQuery;)V
    .locals 0

    .prologue
    .line 443
    iput-object p1, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity$7;->this$0:Lcom/google/android/talk/AlertNotificationFullScreenActivity;

    iput-object p2, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity$7;->val$contactInfoQuery:Lcom/google/android/talk/ContactInfoQuery;

    iput-object p3, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity$7;->val$existingCallNickQuery:Lcom/google/android/talk/ContactInfoQuery;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContactInfoLoaded()V
    .locals 2

    .prologue
    .line 446
    iget-object v0, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity$7;->this$0:Lcom/google/android/talk/AlertNotificationFullScreenActivity;

    iget-object v1, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity$7;->val$contactInfoQuery:Lcom/google/android/talk/ContactInfoQuery;

    invoke-virtual {v1}, Lcom/google/android/talk/ContactInfoQuery;->getNickName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mNickName:Ljava/lang/String;

    .line 447
    iget-object v1, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity$7;->this$0:Lcom/google/android/talk/AlertNotificationFullScreenActivity;

    iget-object v0, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity$7;->val$contactInfoQuery:Lcom/google/android/talk/ContactInfoQuery;

    invoke-virtual {v0}, Lcom/google/android/talk/ContactInfoQuery;->getAvatar()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    # setter for: Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mAvatar:Landroid/graphics/Bitmap;
    invoke-static {v1, v0}, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->access$802(Lcom/google/android/talk/AlertNotificationFullScreenActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 448
    iget-object v0, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity$7;->this$0:Lcom/google/android/talk/AlertNotificationFullScreenActivity;

    # getter for: Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mAvatarView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->access$900(Lcom/google/android/talk/AlertNotificationFullScreenActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity$7;->this$0:Lcom/google/android/talk/AlertNotificationFullScreenActivity;

    # getter for: Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mAvatar:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->access$800(Lcom/google/android/talk/AlertNotificationFullScreenActivity;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 450
    iget-object v0, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity$7;->val$existingCallNickQuery:Lcom/google/android/talk/ContactInfoQuery;

    if-eqz v0, :cond_0

    .line 454
    iget-object v0, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity$7;->val$existingCallNickQuery:Lcom/google/android/talk/ContactInfoQuery;

    invoke-virtual {v0}, Lcom/google/android/talk/ContactInfoQuery;->startQueryForContactInfo()V

    .line 458
    :goto_0
    return-void

    .line 456
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity$7;->this$0:Lcom/google/android/talk/AlertNotificationFullScreenActivity;

    # invokes: Lcom/google/android/talk/AlertNotificationFullScreenActivity;->showDialog()V
    invoke-static {v0}, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->access$700(Lcom/google/android/talk/AlertNotificationFullScreenActivity;)V

    goto :goto_0
.end method
