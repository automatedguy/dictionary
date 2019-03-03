import click


@click.command()
@click.option('--command', prompt='Enter Command:',
              help='The person to greet.')
def automator(command):
    """Simple program that greets NAME for a total of COUNT times."""

    while command is not 'quit':
        click.echo('Running %s!' % command)


if __name__ == '__main__':
    automator()
