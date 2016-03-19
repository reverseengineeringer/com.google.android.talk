.class public final Lcv;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:Ljava/lang/CharSequence;

.field private final c:Landroid/app/PendingIntent;

.field private final d:Landroid/os/Bundle;

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lee;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V
    .locals 1

    .prologue
    .line 1888
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lcv;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;)V

    .line 1889
    return-void
.end method

.method private constructor <init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 1900
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1901
    iput p1, p0, Lcv;->a:I

    .line 1902
    invoke-static {p2}, Lcy;->d(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcv;->b:Ljava/lang/CharSequence;

    .line 1903
    iput-object p3, p0, Lcv;->c:Landroid/app/PendingIntent;

    .line 1904
    iput-object p4, p0, Lcv;->d:Landroid/os/Bundle;

    .line 1905
    return-void
.end method


# virtual methods
.method public a()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 1927
    iget-object v0, p0, Lcv;->d:Landroid/os/Bundle;

    return-object v0
.end method

.method public a(Lee;)Lcv;
    .locals 1

    .prologue
    .line 1938
    iget-object v0, p0, Lcv;->e:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1939
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcv;->e:Ljava/util/ArrayList;

    .line 1941
    :cond_0
    iget-object v0, p0, Lcv;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1942
    return-object p0
.end method

.method public b()Lcu;
    .locals 6

    .prologue
    .line 1960
    iget-object v0, p0, Lcv;->e:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcv;->e:Ljava/util/ArrayList;

    iget-object v1, p0, Lcv;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lee;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lee;

    move-object v5, v0

    .line 1962
    :goto_0
    new-instance v0, Lcu;

    iget v1, p0, Lcv;->a:I

    iget-object v2, p0, Lcv;->b:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcv;->c:Landroid/app/PendingIntent;

    iget-object v4, p0, Lcv;->d:Landroid/os/Bundle;

    .line 2808
    invoke-direct/range {v0 .. v5}, Lcu;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Lee;)V

    .line 1962
    return-object v0

    .line 1960
    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method
