.class Lcom/google/android/talk/fragments/RosterListFragment$1;
.super Ljava/lang/Object;
.source "RosterListFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/fragments/RosterListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/fragments/RosterListFragment;


# direct methods
.method constructor <init>(Lcom/google/android/talk/fragments/RosterListFragment;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/google/android/talk/fragments/RosterListFragment$1;->this$0:Lcom/google/android/talk/fragments/RosterListFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p1, "parent"    # Landroid/widget/AdapterView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/android/talk/fragments/RosterListFragment$1;->this$0:Lcom/google/android/talk/fragments/RosterListFragment;

    move-object v1, p1

    check-cast v1, Landroid/widget/ListView;

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/talk/fragments/RosterListFragment;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 116
    return-void
.end method
