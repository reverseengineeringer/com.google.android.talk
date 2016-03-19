.class public final Ljss;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkog;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkog;"
    }
.end annotation


# instance fields
.field private final a:Lkog;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkog;"
        }
    .end annotation
.end field

.field private final b:Lkog;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkog;"
        }
    .end annotation
.end field

.field private final c:Lkog;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkog;"
        }
    .end annotation
.end field

.field private final d:Lkog;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkog;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkog;Lkog;Lkog;Lkog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkog;",
            "Lkog;",
            "Lkog;",
            "Lkog;",
            ")V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Ljss;->a:Lkog;

    .line 30
    iput-object p2, p0, Ljss;->b:Lkog;

    .line 32
    iput-object p3, p0, Ljss;->c:Lkog;

    .line 34
    iput-object p4, p0, Ljss;->d:Lkog;

    .line 35
    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 5

    .prologue
    .line 1039
    new-instance v4, Ljsr;

    iget-object v0, p0, Ljss;->a:Lkog;

    .line 1040
    invoke-interface {v0}, Lkog;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Ljss;->b:Lkog;

    .line 1041
    invoke-interface {v1}, Lkog;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    iget-object v2, p0, Ljss;->c:Lkog;

    .line 1042
    invoke-interface {v2}, Lkog;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljrc;

    iget-object v3, p0, Ljss;->d:Lkog;

    .line 1043
    invoke-interface {v3}, Lkog;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-direct {v4, v0, v1, v2, v3}, Ljsr;-><init>(Landroid/app/Activity;Ljava/util/Set;Ljrc;Ljava/util/Map;)V

    .line 11
    return-object v4
.end method
