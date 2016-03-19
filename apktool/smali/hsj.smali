.class public Lhsj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Liom;
.implements Lioo;
.implements Liow;
.implements Lioz;


# instance fields
.field private final a:Landroid/app/Activity;

.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lhsk;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lhst;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhst",
            "<",
            "Lhrz;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Liog;)V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lhsj;->b:Ljava/util/Set;

    .line 65
    iput-object p1, p0, Lhsj;->a:Landroid/app/Activity;

    .line 67
    invoke-virtual {p2, p0}, Liog;->a(Lioz;)Lioz;

    .line 68
    return-void
.end method


# virtual methods
.method public a(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lhrz;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Lhsj;->c:Lhst;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhst;->a(Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v0

    .line 99
    if-nez v0, :cond_0

    .line 100
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 102
    :cond_0
    return-object v0
.end method

.method public a(IILandroid/content/Intent;)V
    .locals 4

    .prologue
    .line 107
    new-instance v2, Lhrz;

    invoke-direct {v2, p1, p2, p3}, Lhrz;-><init>(IILandroid/content/Intent;)V

    .line 108
    const/4 v0, 0x0

    .line 109
    iget-object v1, p0, Lhsj;->b:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhsk;

    .line 110
    invoke-interface {v0, v2}, Lhsk;->a(Lhrz;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 111
    const/4 v0, 0x1

    :goto_1
    move v1, v0

    .line 113
    goto :goto_0

    .line 115
    :cond_0
    if-nez v1, :cond_1

    .line 116
    iget-object v0, p0, Lhsj;->c:Lhst;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lhst;->a(Ljava/lang/Integer;Landroid/os/Parcelable;)V

    .line 118
    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method a(ILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lhsj;->a:Landroid/app/Activity;

    invoke-virtual {v0, p2, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 94
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 72
    if-eqz p1, :cond_0

    .line 73
    const-string v0, "com.google.android.libraries.social.activityresult.ActivityResultManager.Results"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lhst;

    iput-object v0, p0, Lhsj;->c:Lhst;

    .line 77
    :goto_0
    return-void

    .line 75
    :cond_0
    new-instance v0, Lhst;

    const-class v1, Lhrz;

    invoke-direct {v0, v1}, Lhst;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lhsj;->c:Lhst;

    goto :goto_0
.end method

.method a(Lhsk;)V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lhsj;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 86
    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 81
    const-string v0, "com.google.android.libraries.social.activityresult.ActivityResultManager.Results"

    iget-object v1, p0, Lhsj;->c:Lhst;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 82
    return-void
.end method

.method b(Lhsk;)V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lhsj;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 90
    return-void
.end method
