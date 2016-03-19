.class final Lhqy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhqh;


# instance fields
.field final synthetic a:Lhqq;


# direct methods
.method constructor <init>(Lhqq;)V
    .locals 0

    .prologue
    .line 1113
    iput-object p1, p0, Lhqy;->a:Lhqq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1116
    const-string v0, "add_skinny_page_boolean"

    return-object v0
.end method

.method public a(Landroid/content/Context;Lhqe;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1121
    const-string v1, "is_google_plus"

    invoke-interface {p2, v1}, Lhqe;->d(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "page_count"

    .line 1122
    invoke-interface {p2, v1, v0}, Lhqe;->a(Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 1123
    :cond_0
    const-string v1, "gplus_skinny_page"

    invoke-interface {p2, v1, v0}, Lhqe;->c(Ljava/lang/String;Z)Lhqe;

    .line 1124
    return-void
.end method
