.class final Libt;
.super Lhtu;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:Libw;


# direct methods
.method constructor <init>(Ljava/lang/String;ILibw;)V
    .locals 0

    .prologue
    .line 866
    invoke-direct {p0, p1}, Lhtu;-><init>(Ljava/lang/String;)V

    .line 867
    iput p2, p0, Libt;->a:I

    .line 868
    iput-object p3, p0, Libt;->b:Libw;

    .line 869
    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;)Lhus;
    .locals 2

    .prologue
    .line 873
    iget-object v0, p0, Libt;->b:Libw;

    iget v1, p0, Libt;->a:I

    invoke-virtual {v0, v1}, Libw;->a(I)V

    .line 874
    new-instance v0, Lhus;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lhus;-><init>(Z)V

    return-object v0
.end method
