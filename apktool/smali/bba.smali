.class public final Lbba;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lhaw;


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    const-class v0, Lhba;

    invoke-static {p1, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhba;

    .line 139
    invoke-interface {v0, p2}, Lhba;->a(I)Lhaw;

    move-result-object v0

    iput-object v0, p0, Lbba;->a:Lhaw;

    .line 140
    return-void
.end method


# virtual methods
.method a(I)V
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lbba;->a:Lhaw;

    invoke-interface {v0, p1}, Lhaw;->a(I)Lhax;

    move-result-object v0

    invoke-interface {v0}, Lhax;->d()V

    .line 146
    return-void
.end method
