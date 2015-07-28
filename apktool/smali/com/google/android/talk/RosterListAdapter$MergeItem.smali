.class Lcom/google/android/talk/RosterListAdapter$MergeItem;
.super Ljava/lang/Object;
.source "RosterListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/RosterListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MergeItem"
.end annotation


# instance fields
.field private mBindRunnable:Lcom/google/android/talk/RosterListAdapter$Bind;

.field private mEnabled:Z

.field private mPosition:I

.field private mResourceToInflate:I

.field private mView:Landroid/view/View;

.field private mViewType:I

.field final synthetic this$0:Lcom/google/android/talk/RosterListAdapter;


# direct methods
.method public constructor <init>(Lcom/google/android/talk/RosterListAdapter;IZII)V
    .locals 0
    .param p2, "position"    # I
    .param p3, "enabled"    # Z
    .param p4, "resource"    # I
    .param p5, "viewType"    # I

    .prologue
    .line 240
    iput-object p1, p0, Lcom/google/android/talk/RosterListAdapter$MergeItem;->this$0:Lcom/google/android/talk/RosterListAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 241
    iput p2, p0, Lcom/google/android/talk/RosterListAdapter$MergeItem;->mPosition:I

    .line 242
    iput p5, p0, Lcom/google/android/talk/RosterListAdapter$MergeItem;->mViewType:I

    .line 243
    iput-boolean p3, p0, Lcom/google/android/talk/RosterListAdapter$MergeItem;->mEnabled:Z

    .line 244
    iput p4, p0, Lcom/google/android/talk/RosterListAdapter$MergeItem;->mResourceToInflate:I

    .line 245
    return-void
.end method

.method static synthetic access$1500(Lcom/google/android/talk/RosterListAdapter$MergeItem;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/talk/RosterListAdapter$MergeItem;

    .prologue
    .line 232
    iget-object v0, p0, Lcom/google/android/talk/RosterListAdapter$MergeItem;->mView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/google/android/talk/RosterListAdapter$MergeItem;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/google/android/talk/RosterListAdapter$MergeItem;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 232
    iput-object p1, p0, Lcom/google/android/talk/RosterListAdapter$MergeItem;->mView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/google/android/talk/RosterListAdapter$MergeItem;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/android/talk/RosterListAdapter$MergeItem;

    .prologue
    .line 232
    iget v0, p0, Lcom/google/android/talk/RosterListAdapter$MergeItem;->mViewType:I

    return v0
.end method

.method static synthetic access$1800(Lcom/google/android/talk/RosterListAdapter$MergeItem;)Lcom/google/android/talk/RosterListAdapter$Bind;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/talk/RosterListAdapter$MergeItem;

    .prologue
    .line 232
    iget-object v0, p0, Lcom/google/android/talk/RosterListAdapter$MergeItem;->mBindRunnable:Lcom/google/android/talk/RosterListAdapter$Bind;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/google/android/talk/RosterListAdapter$MergeItem;Lcom/google/android/talk/RosterListAdapter$Bind;)Lcom/google/android/talk/RosterListAdapter$Bind;
    .locals 0
    .param p0, "x0"    # Lcom/google/android/talk/RosterListAdapter$MergeItem;
    .param p1, "x1"    # Lcom/google/android/talk/RosterListAdapter$Bind;

    .prologue
    .line 232
    iput-object p1, p0, Lcom/google/android/talk/RosterListAdapter$MergeItem;->mBindRunnable:Lcom/google/android/talk/RosterListAdapter$Bind;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/google/android/talk/RosterListAdapter$MergeItem;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/android/talk/RosterListAdapter$MergeItem;

    .prologue
    .line 232
    iget-boolean v0, p0, Lcom/google/android/talk/RosterListAdapter$MergeItem;->mEnabled:Z

    return v0
.end method

.method static synthetic access$2300(Lcom/google/android/talk/RosterListAdapter$MergeItem;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/android/talk/RosterListAdapter$MergeItem;

    .prologue
    .line 232
    iget v0, p0, Lcom/google/android/talk/RosterListAdapter$MergeItem;->mPosition:I

    return v0
.end method

.method static synthetic access$2400(Lcom/google/android/talk/RosterListAdapter$MergeItem;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/android/talk/RosterListAdapter$MergeItem;

    .prologue
    .line 232
    iget v0, p0, Lcom/google/android/talk/RosterListAdapter$MergeItem;->mResourceToInflate:I

    return v0
.end method
