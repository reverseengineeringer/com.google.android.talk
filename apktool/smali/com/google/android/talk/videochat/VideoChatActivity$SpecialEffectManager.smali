.class Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;
.super Ljava/lang/Object;
.source "VideoChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/videochat/VideoChatActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SpecialEffectManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager$BgReplacementManager;
    }
.end annotation


# instance fields
.field private mBackgroundReplaceDialog:Landroid/app/ProgressDialog;

.field private mCurrentPopupMode:I

.field private mGridColumnWidth:I

.field private mInSpecialEffectsMode:Z

.field private mPopupWindow:Landroid/widget/PopupWindow;

.field private final mSpecialEffectsModeLock:Ljava/lang/Object;

.field final synthetic this$0:Lcom/google/android/talk/videochat/VideoChatActivity;


# direct methods
.method constructor <init>(Lcom/google/android/talk/videochat/VideoChatActivity;)V
    .locals 1

    .prologue
    .line 792
    iput-object p1, p0, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 798
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;->mSpecialEffectsModeLock:Ljava/lang/Object;

    .line 799
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;->mGridColumnWidth:I

    .line 1116
    return-void
.end method

.method static synthetic access$200(Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;

    .prologue
    .line 792
    iget-boolean v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;->mInSpecialEffectsMode:Z

    return v0
.end method

.method static synthetic access$202(Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;
    .param p1, "x1"    # Z

    .prologue
    .line 792
    iput-boolean p1, p0, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;->mInSpecialEffectsMode:Z

    return p1
.end method

.method static synthetic access$3400(Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;

    .prologue
    .line 792
    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;->enterSpecialEffectsMode()V

    return-void
.end method

.method static synthetic access$3500(Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;

    .prologue
    .line 792
    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;->leaveSpecialEffectsMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3600(Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;)Landroid/widget/PopupWindow;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;

    .prologue
    .line 792
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;->mPopupWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$3602(Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;
    .locals 0
    .param p0, "x0"    # Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;
    .param p1, "x1"    # Landroid/widget/PopupWindow;

    .prologue
    .line 792
    iput-object p1, p0, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;->mPopupWindow:Landroid/widget/PopupWindow;

    return-object p1
.end method

.method static synthetic access$3700(Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;

    .prologue
    .line 792
    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;->hideSpecialEffectsPicker()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3800(Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;Landroid/net/Uri;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 792
    invoke-direct {p0, p1}, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;->startBackgroundReplaceTraining(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$4400(Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;

    .prologue
    .line 792
    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;->onStop()V

    return-void
.end method

.method static synthetic access$4500(Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;

    .prologue
    .line 792
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;->mSpecialEffectsModeLock:Ljava/lang/Object;

    return-object v0
.end method

.method private enterSpecialEffectsMode()V
    .locals 3

    .prologue
    .line 1097
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;->mSpecialEffectsModeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1098
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;->mInSpecialEffectsMode:Z

    if-nez v0, :cond_0

    .line 1099
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;->mInSpecialEffectsMode:Z

    .line 1101
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    invoke-virtual {v0}, Lcom/google/android/talk/videochat/VideoChatActivity;->invalidateOptionsMenu()V

    .line 1103
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    # getter for: Lcom/google/android/talk/videochat/VideoChatActivity;->mGlView:Lcom/google/android/talk/videochat/GlView;
    invoke-static {v0}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$300(Lcom/google/android/talk/videochat/VideoChatActivity;)Lcom/google/android/talk/videochat/GlView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/talk/videochat/GlView;->startSwapAnimation()V

    .line 1104
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    # getter for: Lcom/google/android/talk/videochat/VideoChatActivity;->mActionBar:Landroid/app/ActionBar;
    invoke-static {v0}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$2700(Lcom/google/android/talk/videochat/VideoChatActivity;)Landroid/app/ActionBar;

    move-result-object v0

    const v2, 0x7f0c0104

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setTitle(I)V

    .line 1105
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    # getter for: Lcom/google/android/talk/videochat/VideoChatActivity;->mActionBar:Landroid/app/ActionBar;
    invoke-static {v0}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$2700(Lcom/google/android/talk/videochat/VideoChatActivity;)Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    .line 1107
    :cond_0
    monitor-exit v1

    .line 1108
    return-void

    .line 1107
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private hideSpecialEffectsPicker()Z
    .locals 1

    .prologue
    .line 1060
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 1061
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1062
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 1063
    const/4 v0, 0x1

    .line 1065
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private leaveSpecialEffectsMode()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1077
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;->mSpecialEffectsModeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1078
    :try_start_0
    iget-boolean v2, p0, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;->mInSpecialEffectsMode:Z

    if-eqz v2, :cond_0

    .line 1079
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;->mInSpecialEffectsMode:Z

    .line 1081
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    invoke-virtual {v0}, Lcom/google/android/talk/videochat/VideoChatActivity;->invalidateOptionsMenu()V

    .line 1084
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    # invokes: Lcom/google/android/talk/videochat/VideoChatActivity;->resetButtonPanelFadeOutCountdown()V
    invoke-static {v0}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$3900(Lcom/google/android/talk/videochat/VideoChatActivity;)V

    .line 1086
    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;->hideSpecialEffectsPicker()Z

    .line 1088
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    # getter for: Lcom/google/android/talk/videochat/VideoChatActivity;->mGlView:Lcom/google/android/talk/videochat/GlView;
    invoke-static {v0}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$300(Lcom/google/android/talk/videochat/VideoChatActivity;)Lcom/google/android/talk/videochat/GlView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/talk/videochat/GlView;->reverseSwapAnimation()V

    .line 1089
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    # getter for: Lcom/google/android/talk/videochat/VideoChatActivity;->mActionBar:Landroid/app/ActionBar;
    invoke-static {v0}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$2700(Lcom/google/android/talk/videochat/VideoChatActivity;)Landroid/app/ActionBar;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 1090
    const/4 v0, 0x1

    monitor-exit v1

    .line 1093
    :goto_0
    return v0

    .line 1092
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private onStop()V
    .locals 1

    .prologue
    .line 1069
    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;->hideSpecialEffectsPicker()Z

    .line 1070
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;->mBackgroundReplaceDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 1071
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;->mBackgroundReplaceDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 1072
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;->mBackgroundReplaceDialog:Landroid/app/ProgressDialog;

    .line 1074
    :cond_0
    return-void
.end method

.method private showPickerForBackgrounds(Landroid/view/View;)V
    .locals 9
    .param p1, "anchor"    # Landroid/view/View;

    .prologue
    .line 961
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    invoke-virtual {v0}, Lcom/google/android/talk/videochat/VideoChatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 964
    .local v6, "backgroundReplacements":[Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    invoke-virtual {v0}, Lcom/google/android/talk/videochat/VideoChatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    .line 967
    .local v7, "backgroundSourceUris":[Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    invoke-virtual {v0}, Lcom/google/android/talk/videochat/VideoChatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 970
    .local v8, "bgReplacementIconResources":Landroid/content/res/TypedArray;
    new-instance v4, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager$5;

    invoke-direct {v4, p0}, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager$5;-><init>(Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;)V

    .line 992
    .local v4, "clickListener":Landroid/widget/AdapterView$OnItemClickListener;
    invoke-virtual {p0, v6, v8, v7}, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;->makeAdapter([Ljava/lang/String;Landroid/content/res/TypedArray;[Ljava/lang/Object;)Landroid/widget/SimpleAdapter;

    move-result-object v2

    const v3, 0x7f0c00fd

    const/4 v5, 0x2

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;->showPickerPopup(Landroid/view/View;Landroid/widget/ListAdapter;ILandroid/widget/AdapterView$OnItemClickListener;I)V

    .line 999
    return-void
.end method

.method private showPickerForFunnyFace(Landroid/view/View;)V
    .locals 11
    .param p1, "anchor"    # Landroid/view/View;

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x3

    .line 927
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    invoke-virtual {v0}, Lcom/google/android/talk/videochat/VideoChatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f080000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    .line 932
    .local v8, "funnyFaces":[Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    invoke-virtual {v0}, Lcom/google/android/talk/videochat/VideoChatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 935
    .local v7, "funnyFaceIconResources":Landroid/content/res/TypedArray;
    const/4 v0, 0x6

    new-array v6, v0, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v5

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v10

    const/4 v0, 0x5

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v0

    .line 944
    .local v6, "funnyFaceEffectValues":[Ljava/lang/Integer;
    new-instance v4, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager$4;

    invoke-direct {v4, p0}, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager$4;-><init>(Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;)V

    .line 952
    .local v4, "clickListener":Landroid/widget/AdapterView$OnItemClickListener;
    invoke-virtual {p0, v8, v7, v6}, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;->makeAdapter([Ljava/lang/String;Landroid/content/res/TypedArray;[Ljava/lang/Object;)Landroid/widget/SimpleAdapter;

    move-result-object v2

    const v3, 0x7f0c00fc

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;->showPickerPopup(Landroid/view/View;Landroid/widget/ListAdapter;ILandroid/widget/AdapterView$OnItemClickListener;I)V

    .line 958
    return-void
.end method

.method private showPickerPopup(Landroid/view/View;Landroid/widget/ListAdapter;ILandroid/widget/AdapterView$OnItemClickListener;I)V
    .locals 5
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "s"    # Landroid/widget/ListAdapter;
    .param p3, "stringTitleId"    # I
    .param p4, "clickListener"    # Landroid/widget/AdapterView$OnItemClickListener;
    .param p5, "numColumns"    # I

    .prologue
    .line 879
    iget-object v2, p0, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    invoke-virtual {v2}, Lcom/google/android/talk/videochat/VideoChatActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040042

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 880
    .local v1, "popupView":Landroid/view/View;
    invoke-direct {p0, p1, p3, v1}, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;->showPopup(Landroid/view/View;ILandroid/view/View;)V

    .line 882
    const v2, 0x7f100094

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    .line 883
    .local v0, "gv":Landroid/widget/GridView;
    const v2, 0x7f100093

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(I)V

    .line 884
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;->mGridColumnWidth:I

    mul-int/2addr v3, p5

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 887
    invoke-virtual {v0, p5}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 888
    invoke-virtual {v0, p4}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 889
    invoke-virtual {v0, p2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 890
    return-void
.end method

.method private showPopup(Landroid/view/View;ILandroid/view/View;)V
    .locals 5
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "stringTitleId"    # I
    .param p3, "popupView"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x2

    .line 803
    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;->hideSpecialEffectsPicker()Z

    .line 805
    const v1, 0x7f10006e

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 806
    .local v0, "tv":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 807
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 810
    :cond_0
    new-instance v1, Landroid/widget/PopupWindow;

    invoke-direct {v1, p3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 811
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v2, v2}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    .line 812
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 813
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;->mPopupWindow:Landroid/widget/PopupWindow;

    new-instance v2, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager$1;

    invoke-direct {v2, p0}, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager$1;-><init>(Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 820
    new-instance v1, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager$2;

    invoke-direct {v1, p0, p1}, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager$2;-><init>(Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;Landroid/view/View;)V

    invoke-virtual {p3, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 833
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;->mPopupWindow:Landroid/widget/PopupWindow;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 838
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, p1, v3, v4}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 839
    return-void
.end method

.method private startBackgroundReplaceTraining(Landroid/net/Uri;)V
    .locals 2
    .param p1, "backgroundVideoUri"    # Landroid/net/Uri;

    .prologue
    .line 1111
    new-instance v0, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager$BgReplacementManager;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager$BgReplacementManager;-><init>(Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;Lcom/google/android/talk/videochat/VideoChatActivity$1;)V

    .line 1112
    .local v0, "bgReplacementManager":Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager$BgReplacementManager;
    invoke-virtual {v0, p1}, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager$BgReplacementManager;->startTraining(Landroid/net/Uri;)V

    .line 1113
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    # getter for: Lcom/google/android/talk/videochat/VideoChatActivity;->mGlView:Lcom/google/android/talk/videochat/GlView;
    invoke-static {v1}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$300(Lcom/google/android/talk/videochat/VideoChatActivity;)Lcom/google/android/talk/videochat/GlView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/talk/videochat/GlView;->setSpecialEffectsStateCallback(Lcom/google/android/talk/videochat/EffectsController$StateCallback;)V

    .line 1114
    return-void
.end method


# virtual methods
.method public clearSpecialEffects()V
    .locals 4

    .prologue
    .line 842
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    new-instance v1, Lcom/google/android/talk/videochat/VideoChatActivity$Effect;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/android/talk/videochat/VideoChatActivity$Effect;-><init>(ILjava/lang/Object;)V

    # invokes: Lcom/google/android/talk/videochat/VideoChatActivity;->setActiveEffect(Lcom/google/android/talk/videochat/VideoChatActivity$Effect;)V
    invoke-static {v0, v1}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$3300(Lcom/google/android/talk/videochat/VideoChatActivity;Lcom/google/android/talk/videochat/VideoChatActivity$Effect;)V

    .line 843
    return-void
.end method

.method makeAdapter([Ljava/lang/String;Landroid/content/res/TypedArray;[Ljava/lang/Object;)Landroid/widget/SimpleAdapter;
    .locals 12
    .param p1, "choices"    # [Ljava/lang/String;
    .param p2, "imageIds"    # Landroid/content/res/TypedArray;
    .param p3, "tags"    # [Ljava/lang/Object;

    .prologue
    .line 894
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 895
    .local v2, "entries":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;*>;>;"
    const/4 v8, 0x0

    .line 896
    .local v8, "i":I
    move-object v6, p1

    .local v6, "arr$":[Ljava/lang/String;
    array-length v10, v6

    .local v10, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_0
    if-ge v9, v10, :cond_0

    aget-object v0, v6, v9

    .line 897
    .local v0, "s":Ljava/lang/String;
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 898
    .local v7, "entry":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "text"

    invoke-virtual {v7, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 899
    const-string v1, "icon"

    const/4 v3, -0x1

    invoke-virtual {p2, v8, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v7, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 900
    const-string v1, "tag"

    aget-object v3, p3, v8

    invoke-virtual {v7, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 901
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 902
    add-int/lit8 v8, v8, 0x1

    .line 896
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 905
    .end local v0    # "s":Ljava/lang/String;
    .end local v7    # "entry":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    new-instance v0, Landroid/widget/SimpleAdapter;

    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    const v3, 0x7f040041

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v11, "text"

    aput-object v11, v4, v5

    const/4 v5, 0x1

    const-string v11, "icon"

    aput-object v11, v4, v5

    const/4 v5, 0x2

    const-string v11, "tag"

    aput-object v11, v4, v5

    const/4 v5, 0x3

    new-array v5, v5, [I

    fill-array-data v5, :array_0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 912
    .local v0, "s":Landroid/widget/SimpleAdapter;
    new-instance v1, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager$3;

    invoke-direct {v1, p0}, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager$3;-><init>(Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;)V

    invoke-virtual {v0, v1}, Landroid/widget/SimpleAdapter;->setViewBinder(Landroid/widget/SimpleAdapter$ViewBinder;)V

    .line 923
    return-object v0

    .line 905
    nop

    :array_0
    .array-data 4
        0x7f100044
        0x7f10006d
        0x7f100092
    .end array-data
.end method

.method public show(Landroid/view/View;)V
    .locals 3
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 846
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 847
    .local v0, "targetId":I
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;->mCurrentPopupMode:I

    if-ne v1, v0, :cond_0

    .line 871
    :goto_0
    return-void

    .line 852
    :cond_0
    iget v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;->mGridColumnWidth:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 853
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    invoke-virtual {v1}, Lcom/google/android/talk/videochat/VideoChatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0043

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;->mGridColumnWidth:I

    .line 856
    :cond_1
    iput v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;->mCurrentPopupMode:I

    .line 858
    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 863
    :sswitch_0
    invoke-direct {p0, p1}, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;->showPickerForBackgrounds(Landroid/view/View;)V

    goto :goto_0

    .line 860
    :sswitch_1
    invoke-direct {p0, p1}, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;->showPickerForFunnyFace(Landroid/view/View;)V

    goto :goto_0

    .line 866
    :sswitch_2
    invoke-virtual {p0, p1}, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;->showVirtualCameraSpecialEffect(Landroid/view/View;)V

    goto :goto_0

    .line 869
    :sswitch_3
    invoke-virtual {p0, p1}, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;->showImageStabilizationSpecialEffect(Landroid/view/View;)V

    goto :goto_0

    .line 858
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f100096 -> :sswitch_0
        0x7f10009c -> :sswitch_1
        0x7f10009e -> :sswitch_3
        0x7f1000a0 -> :sswitch_2
    .end sparse-switch
.end method

.method public showImageStabilizationSpecialEffect(Landroid/view/View;)V
    .locals 9
    .param p1, "anchor"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v5, 0x3

    .line 1002
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    invoke-virtual {v0}, Lcom/google/android/talk/videochat/VideoChatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    .line 1005
    .local v8, "stabilizationLevels":[Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    invoke-virtual {v0}, Lcom/google/android/talk/videochat/VideoChatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 1008
    .local v7, "stabilizationLevelIconResources":Landroid/content/res/TypedArray;
    new-array v6, v5, [Ljava/lang/Integer;

    const/4 v0, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v3

    .line 1014
    .local v6, "stabilizationEffectValues":[Ljava/lang/Integer;
    new-instance v4, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager$6;

    invoke-direct {v4, p0}, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager$6;-><init>(Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;)V

    .line 1023
    .local v4, "clickListener":Landroid/widget/AdapterView$OnItemClickListener;
    invoke-virtual {p0, v8, v7, v6}, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;->makeAdapter([Ljava/lang/String;Landroid/content/res/TypedArray;[Ljava/lang/Object;)Landroid/widget/SimpleAdapter;

    move-result-object v2

    const v3, 0x7f0c0100

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;->showPickerPopup(Landroid/view/View;Landroid/widget/ListAdapter;ILandroid/widget/AdapterView$OnItemClickListener;I)V

    .line 1030
    return-void
.end method

.method public showVirtualCameraSpecialEffect(Landroid/view/View;)V
    .locals 7
    .param p1, "anchor"    # Landroid/view/View;

    .prologue
    .line 1033
    iget-object v4, p0, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    invoke-virtual {v4}, Lcom/google/android/talk/videochat/VideoChatActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f040040

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 1034
    .local v3, "popupView":Landroid/view/View;
    const v4, 0x7f100091

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    .line 1035
    .local v1, "enable":Landroid/widget/Switch;
    iget-object v4, p0, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    # getter for: Lcom/google/android/talk/videochat/VideoChatActivity;->mGlView:Lcom/google/android/talk/videochat/GlView;
    invoke-static {v4}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$300(Lcom/google/android/talk/videochat/VideoChatActivity;)Lcom/google/android/talk/videochat/GlView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/talk/videochat/GlView;->getEffectsController()Lcom/google/android/talk/videochat/EffectsController;

    move-result-object v0

    .line 1036
    .local v0, "effects":Lcom/google/android/talk/videochat/EffectsController;
    invoke-virtual {v0}, Lcom/google/android/talk/videochat/EffectsController;->getActiveEffect()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    const/4 v2, 0x1

    .line 1038
    .local v2, "enabled":Z
    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1040
    new-instance v4, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager$7;

    invoke-direct {v4, p0}, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager$7;-><init>(Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;)V

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1053
    const v4, 0x7f0c00fe

    invoke-direct {p0, p1, v4, v3}, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;->showPopup(Landroid/view/View;ILandroid/view/View;)V

    .line 1054
    return-void

    .line 1036
    .end local v2    # "enabled":Z
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
