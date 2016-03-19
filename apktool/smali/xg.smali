.class public final Lxg;
.super Landroid/widget/SeekBar;
.source "SourceFile"


# instance fields
.field private a:Lxh;

.field private b:Lvv;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 41
    sget v0, Laen;->ac:I

    invoke-direct {p0, p1, p2, v0}, Lxg;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    invoke-static {p1}, Lvv;->a(Landroid/content/Context;)Lvv;

    move-result-object v0

    iput-object v0, p0, Lxg;->b:Lvv;

    .line 49
    new-instance v0, Lxh;

    iget-object v1, p0, Lxg;->b:Lvv;

    invoke-direct {v0, p0, v1}, Lxh;-><init>(Landroid/widget/SeekBar;Lvv;)V

    iput-object v0, p0, Lxg;->a:Lxh;

    .line 50
    iget-object v0, p0, Lxg;->a:Lxh;

    invoke-virtual {v0, p2, p3}, Lxh;->a(Landroid/util/AttributeSet;I)V

    .line 51
    return-void
.end method
