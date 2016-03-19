.class final Lhqz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhqb;


# instance fields
.field final synthetic a:Lhqq;

.field private final b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lhqq;I)V
    .locals 1

    .prologue
    .line 787
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lhqz;-><init>(Lhqq;Ljava/lang/String;)V

    .line 788
    return-void
.end method

.method private constructor <init>(Lhqq;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 782
    iput-object p1, p0, Lhqz;->a:Lhqq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 783
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lhqz;->b:Ljava/lang/String;

    .line 784
    return-void
.end method

.method private f(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 860
    iget-object v0, p0, Lhqz;->b:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;F)F
    .locals 2

    .prologue
    .line 840
    invoke-direct {p0, p1}, Lhqz;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 841
    iget-object v1, p0, Lhqz;->a:Lhqq;

    .line 7035
    iget-object v1, v1, Lhqq;->b:Landroid/content/SharedPreferences;

    .line 841
    invoke-interface {v1, v0, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;I)I
    .locals 2

    .prologue
    .line 828
    invoke-direct {p0, p1}, Lhqz;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 829
    iget-object v1, p0, Lhqz;->a:Lhqq;

    .line 5035
    iget-object v1, v1, Lhqq;->b:Landroid/content/SharedPreferences;

    .line 829
    invoke-interface {v1, v0, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;J)J
    .locals 2

    .prologue
    .line 834
    invoke-direct {p0, p1}, Lhqz;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 835
    iget-object v1, p0, Lhqz;->a:Lhqq;

    .line 6035
    iget-object v1, v1, Lhqq;->b:Landroid/content/SharedPreferences;

    .line 835
    invoke-interface {v1, v0, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 798
    invoke-direct {p0, p1}, Lhqz;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 799
    iget-object v1, p0, Lhqz;->a:Lhqq;

    .line 2035
    iget-object v1, v1, Lhqq;->b:Landroid/content/SharedPreferences;

    .line 799
    invoke-interface {v1, v0, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 846
    const-string v0, "logged_in"

    invoke-virtual {p0, v0}, Lhqz;->d(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 792
    invoke-direct {p0, p1}, Lhqz;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 793
    iget-object v1, p0, Lhqz;->a:Lhqq;

    .line 1035
    iget-object v1, v1, Lhqq;->b:Landroid/content/SharedPreferences;

    .line 793
    invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;Z)Z
    .locals 2

    .prologue
    .line 817
    invoke-direct {p0, p1}, Lhqz;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 818
    iget-object v1, p0, Lhqz;->a:Lhqq;

    .line 4035
    iget-object v1, v1, Lhqq;->b:Landroid/content/SharedPreferences;

    .line 818
    invoke-interface {v1, v0, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 804
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lhqz;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 851
    const-string v0, "logged_out"

    invoke-virtual {p0, v0}, Lhqz;->d(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public c(Ljava/lang/String;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 809
    invoke-direct {p0, p1}, Lhqz;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 811
    iget-object v2, p0, Lhqz;->a:Lhqq;

    .line 3035
    iget-object v2, v2, Lhqq;->b:Landroid/content/SharedPreferences;

    .line 811
    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    .line 812
    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    goto :goto_0
.end method

.method public d(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 823
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lhqz;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public e(Ljava/lang/String;)Lhqb;
    .locals 5

    .prologue
    .line 856
    new-instance v1, Lhqz;

    iget-object v2, p0, Lhqz;->a:Lhqq;

    iget-object v0, p0, Lhqz;->b:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {v1, v2, v0}, Lhqz;-><init>(Lhqq;Ljava/lang/String;)V

    return-object v1

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method
