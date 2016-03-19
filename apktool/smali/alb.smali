.class public final Lalb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lale;

.field private final b:Laul;


# direct methods
.method public constructor <init>(Laul;Lale;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lalb;->b:Laul;

    .line 58
    iput-object p2, p0, Lalb;->a:Lale;

    .line 59
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lalb;->a:Lale;

    iget-object v1, p0, Lalb;->b:Laul;

    invoke-virtual {v0, v1}, Lale;->b(Laul;)V

    .line 63
    return-void
.end method
