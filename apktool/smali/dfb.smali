.class public final Ldfb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/apps/hangouts/phone/DebugActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/hangouts/phone/DebugActivity;)V
    .locals 0

    .prologue
    .line 917
    iput-object p1, p0, Ldfb;->a:Lcom/google/android/apps/hangouts/phone/DebugActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 920
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 922
    iget-object v1, p0, Ldfb;->a:Lcom/google/android/apps/hangouts/phone/DebugActivity;

    invoke-virtual {v1}, Lcom/google/android/apps/hangouts/phone/DebugActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Laal;->fA:I

    invoke-virtual {v1, v2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 923
    const v1, 0x102000a

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 925
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 926
    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual {v4}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 927
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 929
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 930
    invoke-virtual {v4, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 931
    if-nez v2, :cond_0

    const-string v2, "NULL"

    :cond_0
    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 934
    :cond_1
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Ldfb;->a:Lcom/google/android/apps/hangouts/phone/DebugActivity;

    .line 1084
    iget-object v4, v4, Lcom/google/android/apps/hangouts/phone/DebugActivity;->g:Lbfd;

    .line 934
    invoke-virtual {v4}, Lbfd;->g()I

    move-result v4

    invoke-static {v2, v0, v4}, Lcom/google/android/apps/hangouts/requestwriter/RequestWriter;->a(Landroid/content/Context;Landroid/content/Intent;I)Lcwi;

    move-result-object v2

    .line 935
    if-eqz v2, :cond_2

    .line 936
    const-string v4, "Server Request"

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 937
    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 939
    :cond_2
    invoke-static {v0}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->c(Landroid/content/Intent;)Ldqf;

    move-result-object v2

    .line 940
    if-eqz v2, :cond_3

    .line 941
    const-string v4, "Server Response"

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 942
    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 944
    :cond_3
    iget-object v2, p0, Ldfb;->a:Lcom/google/android/apps/hangouts/phone/DebugActivity;

    .line 2084
    iget-object v2, v2, Lcom/google/android/apps/hangouts/phone/DebugActivity;->g:Lbfd;

    .line 945
    invoke-virtual {v2}, Lbfd;->g()I

    move-result v2

    const/4 v4, 0x0

    invoke-static {v0, v2, v4}, Legt;->a(Landroid/content/Intent;IZ)Ljava/util/List;

    move-result-object v0

    .line 947
    if-eqz v0, :cond_4

    .line 948
    const-string v2, "Server Update"

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 949
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 952
    :cond_4
    iget-object v0, p0, Ldfb;->a:Lcom/google/android/apps/hangouts/phone/DebugActivity;

    .line 3084
    invoke-virtual {v0, v5, v6}, Lcom/google/android/apps/hangouts/phone/DebugActivity;->a(Ljava/util/List;Ljava/util/List;)Landroid/widget/BaseAdapter;

    move-result-object v0

    .line 952
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 953
    iget-object v0, p0, Ldfb;->a:Lcom/google/android/apps/hangouts/phone/DebugActivity;

    .line 4862
    new-instance v2, Ldey;

    invoke-direct {v2, v0}, Ldey;-><init>(Lcom/google/android/apps/hangouts/phone/DebugActivity;)V

    .line 953
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 954
    iget-object v0, p0, Ldfb;->a:Lcom/google/android/apps/hangouts/phone/DebugActivity;

    .line 5906
    new-instance v2, Ldez;

    invoke-direct {v2, v0}, Ldez;-><init>(Lcom/google/android/apps/hangouts/phone/DebugActivity;)V

    .line 954
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 955
    iget-object v0, p0, Ldfb;->a:Lcom/google/android/apps/hangouts/phone/DebugActivity;

    .line 6084
    invoke-virtual {v0, v3, v8, v8}, Lcom/google/android/apps/hangouts/phone/DebugActivity;->a(Landroid/view/View;Landroid/database/Cursor;Ljava/lang/Runnable;)V

    .line 956
    return-void
.end method
