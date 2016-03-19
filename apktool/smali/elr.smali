.class final Lelr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lijg;


# instance fields
.field final synthetic a:Lelw;

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Lelp;


# direct methods
.method constructor <init>(Lelp;Lelw;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 298
    iput-object p1, p0, Lelr;->c:Lelp;

    iput-object p2, p0, Lelr;->a:Lelw;

    iput-object p3, p0, Lelr;->b:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lijc;Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 301
    check-cast p2, Ljava/lang/String;

    .line 303
    iget-object v0, p0, Lelr;->a:Lelw;

    invoke-virtual {v0}, Lelw;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 304
    iget-object v0, p0, Lelr;->a:Lelw;

    invoke-virtual {v0, p2}, Lelw;->a(Ljava/lang/String;)V

    .line 305
    iget-object v1, p0, Lelr;->a:Lelw;

    iget-object v0, p0, Lelr;->b:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Lelw;->b(Ljava/lang/CharSequence;)V

    .line 306
    iget-object v0, p0, Lelr;->c:Lelp;

    .line 1051
    iget-object v0, v0, Lelp;->a:Leot;

    .line 306
    invoke-interface {v0, p2}, Leot;->a(Ljava/lang/String;)V

    .line 308
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
